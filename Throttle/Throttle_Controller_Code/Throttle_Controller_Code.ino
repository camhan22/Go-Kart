/*
  Author: Cameron Hanson
  Author Email: hansoncameron18@yahoo.com

  Revision #: 1.2
  Revision Release Date: 06/20/2021

  Revision History:
  1.2 - Added fault codes to tell alert the user if a wire has failed on the pots and which one. Also added a reset function from the I2C bus
  1.1 - Added direction header that way the system can function even when mounted backwards.
  1.0 - Initial Release


  Things to add/update:
*/
//INCLUDES//
#include <Wire.h>

#define Throttle_1_Pin A3 //Define the pins the throttles are attached to
#define Throttle_2_Pin A2 //PB3 and PB4
//Left pot in normal orientation is throttle_1 and right pot is throttle_2

#define Max_Val = 1023 //Defines the maximum value that will be read by the pots
#define Direction_Pin 1 //Pin the direction reversing occurs on

#define Address 8 //Define the address that will be used for the throttle

//Holds the value that each throttle sees
int Throttle_1_Value = 0; //Percentage from Throttle 1
int Throttle_2_Value = 0; //Percentage for Throttle 2
//These will be used to check if there is a problem (redundancy since it is electric and not mechanically linked)

//Set initial max and mins at the opposite end it is supposed to be on, this way any value lower than this min, will take over
int T1_Cal_Min = 1023;
int T1_Cal_Max = 0;
int T2_Cal_Min = 1023;
int T2_Cal_Max = 0;


byte Throttle_Percent = 0; // Holds the throttle percentage for the motors
byte Throttle_Status = 0; // Holds the status of the controller, tells if there was an error or not
byte Tolerance = 10; //Tolerance in percent. Meaning they cannot differ by more than this amount

byte Controller_Status = 0; //Holds the status of the controller
int reset_count = 0; //Holds whether the correct number of bytes has been recieved from previous transmissions
bool reset = 0; //Tells the controller that a reset event has been triggered
bool fault = 0;


void setup() {
  //Set the throttle pins as inputs to read the wiper voltage of the potentiometers
  pinMode(Throttle_1_Pin, INPUT);
  pinMode(Throttle_2_Pin, INPUT);
  pinMode(Direction_Pin, INPUT_PULLUP); //This pin is normally high, but can be pulled low with the jumper

  Wire.begin(Address); //join i2c bus with address #8 (Doesn't matter as long as it isn't 0-7)
  Wire.onRequest(requestEvent); //register event for when input is requested by the main controller

  Controller_Status = 16; //System is calibrating

  int start_time = millis();
  while (millis() - start_time < 5000) {
    Throttle_1_Value = analogRead(Throttle_1_Pin);
    Throttle_2_Value = analogRead(Throttle_2_Pin);

    if (Throttle_1_Value < T1_Cal_Min) {
      T1_Cal_Min = Throttle_1_Value;
    } else if (Throttle_1_Value > T1_Cal_Max) {
      T1_Cal_Max = Throttle_1_Value;
    }

    if (Throttle_2_Value < T2_Cal_Min) {
      T2_Cal_Min = Throttle_2_Value;
    } else if (Throttle_2_Value > T2_Cal_Max) {
      T2_Cal_Max = Throttle_2_Value;
    }
  }

  Controller_Status = 0;
}

void loop() {
  if (digitalRead(Direction_Pin) == 1) {
    Throttle_1_Value = map(analogRead(Throttle_1_Pin), T1_Cal_Min, T1_Cal_Max, 0, 100); //Map input 1 to 0-100%
    Throttle_2_Value = map(analogRead(Throttle_2_Pin), T2_Cal_Min, T2_Cal_Max, 0, 100); //Map input 2 to 0-100%
  } else { // Otherwise it is pulled low and the mapping should occur in reverse. Thus 1023 should map to 0% and 0 should map to 100%
    Throttle_1_Value = map(analogRead(Throttle_1_Pin), T1_Cal_Min, T1_Cal_Max, 100, 0); //Map input 1 to 0-100%
    Throttle_2_Value = map(analogRead(Throttle_2_Pin), T2_Cal_Min, T2_Cal_Max, 100, 0); //Map input 2 to 0-100%
  }
  //FAULTS
  if (fault == 1) { //If there is a fault, then send that code and make the throttle go to zero to stop the machine
    Throttle_Percent = 0; //Tell the motors to turn off since the throttle data isnt reliable
    if (reset == 1) { //If a reset event comes in
      fault = 0; //There are no faults left
      Controller_Status = 0; //Everything is good to go
      reset = 0; //The reset has done it's job, now we clear it and wait for the next reset to come in
    }
  }
  //Checks if any of the pots has a broken connection
  else if (Throttle_2_Value < 100 - Tolerance && Throttle_2_Value > 0 + Tolerance && Throttle_1_Value == 100) {
    //If the first throttle is somewhere between 0 and 100 but the other is pegged at 0, the first throttle has a broken ground connection
    fault = 1;
    if (digitalRead(Direction_Pin) == 1) {
      Controller_Status = 2;
    } else {
      Controller_Status = 8;
    }
  } else if (Throttle_2_Value < 100 - Tolerance && Throttle_2_Value > 0 + Tolerance && Throttle_1_Value == 0) {
    //If the first throttle is somewhere between 0 and 100 but the other is pegged at 0, the first throttle has a broken power connection
    fault = 1;
    if (digitalRead(Direction_Pin) == 1) {
      Controller_Status = 3;
    } else {
      Controller_Status = 9;
    }
  } else if (Throttle_1_Value < 100 - Tolerance && Throttle_1_Value > 0 + Tolerance && Throttle_2_Value == 100) {
    //If the first throttle is somewhere between 0 and 100 but the other is pegged at 100, the second throttle has a broken ground connection
    fault = 1;
    if (digitalRead(Direction_Pin) == 1) {
      Controller_Status = 4;
    } else {
      Controller_Status = 6;
    }
  } else if (Throttle_1_Value < 100 - Tolerance && Throttle_1_Value > 0 + Tolerance && Throttle_2_Value == 0) {
    //If the first throttle is somewhere between 0 and 100 but the other is pegged at 0, the second throttle has a broken power connection
    fault = 1;
    if (digitalRead(Direction_Pin) == 1) {
      Controller_Status = 5;
    } else {
      Controller_Status = 7;
    }
  }else if(abs(Throttle_1_Value - Throttle_2_Value) > Tolerance) { //Check the throttle values are within tolerance of each other
    fault = 1; //Hold onto the fault until a reset command is sent
    Controller_Status = 1; //Throw a fault code telling that the tolerancing has not been met
  } else { //Otherwise, it is safe to send the throttle to the main controller
    Throttle_Percent = (Throttle_1_Value + Throttle_2_Value) / 2;
    Controller_Status = 0;
  }
  delay(20); //Only allow this value to update every 200ms
}

//Executes when the main controller askes for data. It will request 2 bytes. The first being the throttle data and the second being the throttle status
void requestEvent() {
  Wire.write(Throttle_Percent);
  Wire.write(Controller_Status);
}
void receiveEvent(int howMany) {
  //When any data arrives to the unit, we will check to see if it is a reset command. A reset is the only commands that should be sent to the system but this ensures it is a reset event
  checkReset();
}

void checkReset() { // Checks to see if the system has been issued the reset command
  byte recieve_byte;
  if (recieve_byte == 113) { // If the byte coming in is 112 (Normally not something sent to the controller) then increase the counter
    reset_count++;
  }
  else if (reset_count >= 1 && recieve_byte == 230 && fault == 1) { //otherwise reset the counter
    reset = 1;
    reset_count = 0;
  }
  else { // If the first byte is 112 and the next byte is 229, then the fault will be allowed to clear
    reset_count = 0;
  }
}
