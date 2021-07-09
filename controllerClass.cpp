#include "controllerClass.h"
/*
Author: Cameron Hanson
Author Email: hansoncameron18@yahoo.com
Description: Raspberry Pi main controller for an electric go-kart with custom motor controllers
 
Revision #: 1.0
Revision Release Date: 

Revision History:
1.0 - Inital Release


Things to add/update:

*/


class MotorController
{
private:	//Section to hold variables
  int Address; // Holds the address of the controller
  int Speed; //Holds the speed expressed as a duty cycle from 0 to 100%
  bool Direction; //Holds the direction 1 for forward, 0 for reverse
  bool Reversed;
  
public:	//Section to hold methods, gets ,and sets
  void MotorController(){ //Default constructor for when objects are allocated in an array
	  Speed = 0;
	  Direction = 1;
	  Reversed = 0;
  }
  void MotorController(int address, bool reversed){	  //Constructor to intialize the system
	Address = address;
	Direction = 1; //This corresponds to the forward direction
	Speed = 0; //Start with a speed of 0
	Reversed = reversed; //Some motors must spin opposite to others due to orientation
  }

  //Getters and setters for the private variables
  void SetAddress (int address){ //Set a new address for the controller
	  Address = address;
  }
  int GetAddress (){ // Return the current controller address
	  return Address;
  }

  void SetSpeed (int speed){ //Set the speed of the controller
	  int clamped_speed = ClampInput(speed,0,100); //Clamp the input to between 0 and 100 for the duty cycle
	  Speed = clamped_speed; //Assign the speed to the clamped input speed
  }
  int GetSpeed (){
	  return Speed; // Return the current speed (0 - 100%)
  }

  void SetDirection (bool dir){ //Set the direction the controller should be going
	  if(Reversed == true){ //If the specific motor is to be reversed due to orientation, then invert the direction
		Direction = !dir; 
	  }else{
		Direction = dir;
	  }
  }
  int GetDirection (){
	  return Direction; //Return the current direction
  }
  
  //Other Methods
  int ClampInput (int value, int lower, int upper){	// Checks the speed and clamps it if necessary
		if(value > upper){
			value = uppper;
		}
		else if(value < lower){
			value = lower;
		}
		
		return value; // Return the clamped input value if it needed it
  }
  
  int SendSpeedandDirection(){ //Sends the current speed and direction to the motor controller
	int error_num = 0; //Assume everything is okay for now
	
		
	
	return error_num;
  }
}
