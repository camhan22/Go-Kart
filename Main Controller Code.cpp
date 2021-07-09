//Main Controller Code

#include <cernno.h>
#include <iostream>

//Needed for I2C communication
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>

#include "controllerClass.h"
using namespace std;

#define Max_Motors 8 //Defines the max number of motors allowed on the system (Limited by the number of dip switches on the controller itself)

//FUNCTION PROTOS
void ClearBuffer(unsigned char Buffer[], int Max_Buffer_Length);
void I2CRead(unsigned char* Buffer, int read_length);
void I2CWrite(unsigned char Buffer[], int write_length);




int main(){
//VARIABLES
	//I2CINFO
	char *filename = (char*)"/dev/i2c-1"; //Sets the filename to write to the I2C devices
	int fileI2C; //Holds the file to access I2C commands
	const int maxBufferLength = 10;
	unsigned char bufffer[maxBufferLength]={0}; //Create an empty buffer for the recieved data
	//END I2CINFO

	//ADDRESSES
	int Throttle_Address;
	int motorAddresses[6] = {0}; //Create a array of the motor addresses, these will be used to create the motor objects. This can be deleted from memory after the objects are created

	//END ADDRESSES
//END VARIABLES

	//----- OPEN THE I2C BUS -----
	if(openI2C(filename) != 0){ //Open the I2C bus with the specified I2C filename
		printf("Failed to open I2C bus");
		printf(strerror(errno)); //If the bus failed to open, print out why it failed
	}
	
	//Loop through the beginning addresses to see if any motors exist, if they do, store that address for object creation
	for(int i = 0; i < Max_Motors; i++){
		int j = 0; //Create a temp variable to index the address array while the addresses are looped through
		if(I2CRead(fileI2C, buffer, 1) == 0){ //This will read the status from the device, if it was successful, then it will be stored
			motorAddresses[j] = i; //Store the address in the address buffer
			j++; //Another device has ben added. Move the index by 1
		}
	}
	
	MotorController* motors = new MotorController[length(motorAddresses)]; //Dynamically allocate the array for the motor controller objects using the default constructor
	//Loop through the addresses and create the objects
	for(int i = 0; i < length(motorAddresses); i++){
		motors[i].SetAddress(i); //Set the address of this controller. The default constructor took care of the direction and speed since they should all be the same
	}
}

int openI2C(char* fileName){
	//Will add retry capability to avoid system failure
	file_i2c = open(filename, O_RDWR) //Try to open the i2c file, if it fails, then print out the reason
	return ernno;
}

//Function to loop through each element of the buffer and clear it entirely
void clearBuffer(unsigned char passedBuffer[], int maxBufferLength){
	for(int i = 0; i < maxBufferLength; i++){ //Loop through each element and 
		passedBuffer[i] = 0;
	}
}

//Function to read from the I2C bus
int I2CRead(int file, unsigned char passedBuffer[], int readLength){
	//Should add a retry event to try and get data from the device and will fail only after a certain number of tries
	read(file, passedBuffer, readLength); //Try and read from the device
	return ernno; //I2C writes to ernno and this can be examined after
}

//Function to write to the I2C bus
int I2CWrite(int file, unsigned char passedBuffer[], int writeLength){	
	write(file, passedBuffer, writeLength);
	return ernno;
}




