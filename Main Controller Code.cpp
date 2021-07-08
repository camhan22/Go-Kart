//Main Controller Code

#include <cernno.h>
#include <iostream>

//Needed for I2C communication
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>

using namespace std;

//I2CINFO
int file_I2C; //Holds the file to access I2C commands
const int Max_Buffer_Length = 10;
unsigned char bufffer[Max_Buffer_Length]={0}; //Create an empty buffer for the recieved data
//END I2CINFO

//ADDRESSES
int Throttle_Address;
int Motor_Addresses[6] = {0}; //Create a array of the motor addresses. The motor objects will be created later
//END ADDRESSES

#define Max_Motors 7 //Defines the max number of motors allowed on the system (Limited by the number of dip switches on the controller itself)

int main(){
	char *filename = (char*)"/dev/i2c-1"; //Sets the filename to write to the I2C devices

	//----- OPEN THE I2C BUS -----
	if ((file_i2c = open(filename, O_RDWR)) < 0) //Try to open the i2c file, if it fails, then print out the reason
	{
		printf("Failed to open the i2c bus");
		printf(strerror(ernno)); //Prints out a text string to describe what happened
		return 1;// exit the program with an error
	}
	
	for(int i = 0; i < Max_Motors; i++){
		
	}
}

//Function to loop through each element of the buffer and clear it entirely
void ClearBuffer(unsigned char Buffer[], int Max_Buffer_Length){
	for(int i = 0; i < Max_Buffer_Length; i++){ //Loop through each element and 
		Buffer[i] = 0;
	}
}
void I2CRead(unsigned char* Buffer, int read_length){
	if (read(file_i2c, Buffer, read_length) != read_length)		//read() returns the number of bytes actually read, if it doesn't match then an error occurred (e.g. no response from the device)
	{
		//ERROR HANDLING: i2c transaction failed
		printf("Failed to read from the i2c bus.\n");
	}
}

void I2CWrite(unsigned char Buffer[], int read_length){
	ClearBuffer(); //Clear the buffer contents
}




