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

#ifndef i2c-dev.h //If the I2C library isn't defined, then define it
	#include <i2c-dev.h>
#endif


class Motor_Controller
{
private:	//Section to hold variables
  int Address; // Holds the address of the controller
  int Speed; //Holds the speed expressed as a duty cycle from 0 to 100%
  bool Direction; //Holds the direction 1 for forward, 0 for reverse
  
public:	//Section to hold methods, gets ,and sets
  
  void Motor_Controller(int address); //Constructor to intialize the system

  //Getters and setters for the private variables
  void SetAddress(int address); //Set a new address for the controller
  int GetAddress(); //Return the current controller address

  void SetSpeed(int speed); //Set the speed of the controller
  int GetSpeed(); //Return the current speed (0 - 100%)

  void SetDirection(bool dir); //Set the direction the controller should be going
  int GetDirection(); //Return the current direction
  
  //Other Methods
  int ClampInput (int value, int lower, int upper);	//Checks the speed and clamps it if necessary
  
  int SendSpeedandDirection(); //Sends the current speed and direction to the motor controller 
}
