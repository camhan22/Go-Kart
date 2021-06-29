#include <Wire.h> //Add I2C support
#include <Servo_ATTinyCore.h> //Add the servo library

#define Servo_Pin 1 //Define the pin the servo motor is attached to
#define Watchdog_Time_Limit 2000 //Define how often the system should get a command

int Angle = 0; //Holds the angle that the servo motor should be at
byte recieve_byte = 0; //Holds the byte recieved from the master device
Servo HTServo; //Create the servo object

int last_time = 0; //Holds the last time that a recieve event has occured
bool Reset = 0; //Holds if there is an active fault
bool Fault = 0; //Holds if there is a reset event waiting to occur
int Controller_Status = 1; //Holds the status of the controller to send to the master device
int reset_count = 0; //Holds the number of correct reset inputs have occured

void setup() {
  Wire.begin(9); //Join I2C bus with address 9
  Wire.onReceive(receiveEvent); //Register the recieve event function
  Wire.onRequest(requestEvent); //Function to call when a data request event occurs
  
  HTServo.attach(1); //Attach the servo to digital pin 1 (physical pin 6)
  
}

void loop() {
  if(Fault == 1){
    if(Reset == 1){
      Fault = 0; //If the reset event came in, then we can remove the fault 
      Controller_Status = 0; //Since the fault is gone, tell the master device this has happened
    }else{
      Angle = 0; //If the fault exists, force the angle to zero to make the gas motor go to idle
    }
  }
  
  if(millis()-last_time > Watchdog_Time_Limit){ //If it hasn't seen any commands in a certain amount of time, then there is a problem and it should stop
    Fault = 1; //There is a fault
    Angle = 0; //Make the motor go to idle
    Controller_Status = 1; //Tell the master device of this
  }
  
  HTServo.write(Angle);
  delay(100); //Make the program slow down a bit
}

//Function that executes whenever data is sent from the master device
void receiveEvent(int howMany) {
  recieve_byte = Wire.read(); //Read one byte from the system
  last_time = millis(); //Update the last time data has come in
  checkReset(); //Check to see if a reset event is trying to occur
}

//Executes when the main controller askes for data. It will ask for a single byte which is the status of the controller
void requestEvent() {
  Wire.write(Controller_Status); //Write the status of the controller back
}

void checkReset() { // Checks to see if the system has been issued the reset command
  byte recieve_byte;
  if (recieve_byte == 114) { // If the byte coming in is 112 (Normally not something sent to the controller) then increase the counter
    reset_count++;
  }
  else if (reset_count >= 1 && recieve_byte == 231 && Fault == 1) { //otherwise reset the counter
    Reset = 1;
    reset_count = 0;
  }
  else { // If the first byte is 112 and the next byte is 229, then the fault will be allowed to clear
    reset_count = 0;
  }
}
