/*
  Author: Cameron Hanson
  Author Email: hansoncameron18@yahoo.com

  Revision #: 1.1
  Revision Release Date: 06/16/2021

  Revision History:
  1.1 - Added direction header that way the system can function even when mounted backwards.
  1.0 - Initial Release


  Things to add/update:
  Add a command to reset the system from a software fault. Might add a pin to allow it to hard reset itself.
*/

/*
   NOTES: In order to reset the system, power will need to be switched off and then back on.

*/
//INCLUDES//
#include <Wire.h>

#define Throttle_1_Pin A3 //Define the pins the throttles are attached to
#define Throttle_2_Pin A2 //PB3 and PB4

#define Direction_Pin 1 //Pin the direction reversing occurs on

//Holds the value that each throttle sees
byte Throttle_1_Value = 0; //Percentage from Throttle 1
byte Throttle_2_Value = 0; //Percentage for Throttle 2
//These will be used to check if there is a problem (redundancy since it is electric and not mechanically linked)
byte Throttle_Percent = 0;

byte ThrottlePercent = 0; // Holds the throttle percentage for the motors
byte Throttle_Status = 0; // Holds the status of the controller, tells if there was an error or not
byte Tolerance = 5; //Tolerance in percent. Meaning they cannot differ by more than this amount

byte Controller_Status = 0; //Holds the status of the controller

void setup() {
  //Set the throttle pins as inputs to read the wiper voltage of the potentiometers
  pinMode(Throttle_1_Pin, INPUT);
  pinMode(Throttle_2_Pin, INPUT);
  pinMode(Direction_Pin, INPUT_PULLUP); //This pin is normally high, but can be pulled low with the jumper

  Wire.begin(8); //join i2c bus with address #8 (Doesn't matter as long as it isn't 0-7)
  Wire.onRequest(requestEvent); //register event for when input is requested by the main controller

}

void loop() {
  if (digitalRead(Direction_Pin) == 1) {
    Throttle_1_Value = map(analogRead(Throttle_1_Pin), 0, 1023, 0, 100); //Map input 1 to 0-100%
    Throttle_2_Value = map(analogRead(Throttle_2_Pin), 0, 1023, 0, 100); //Map input 2 to 0-100%
  } else { // Otherwise it is pulled low and the mapping should occur in reverse. Thus 1023 should map to 0% and 0 should map to 100%
    Throttle_1_Value = map(analogRead(Throttle_1_Pin), 0, 1023, 100, 0); //Map input 1 to 0-100%
    Throttle_2_Value = map(analogRead(Throttle_2_Pin), 0, 1023, 100, 0); //Map input 2 to 0-100%
  }

  if (abs(Throttle_1_Value - Throttle_2_Value) > Tolerance) {
    Controller_Status = 1; //Throw a fault code telling that the tolerancing has not been met
    Throttle_Percent = 0; //Tell the motors to turn off since the throttle data isnt reliable
  } else {
    Throttle_Percent = (Throttle_1_Value + Throttle_2_Value) / 2;
    Controller_Status = 0;
  }
  
  delay(200); //Only allow this value to update every 200ms
}

//Executes when the main controller askes for data. It will request 2 bytes. The first being the throttle data and the second being the throttle status
void requestEvent() {
  Wire.write(Throttle_Percent); //Write the throttle percentage to the main controller
  Wire.write(Controller_Status); //Write the status of the throttle controller to know if there were any errors
}
