//Main Controller Code

#include <cernno.h>
#include <iostream>

//Needed for I2C communication
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>

using namespace std;




int main(
	char *filename = (char*)"/dev/i2c-1"; //Sets the filename to write to the I2C devices


	//----- OPEN THE I2C BUS -----
	if ((file_i2c = open(filename, O_RDWR)) < 0)
	{
		printf("Failed to open the i2c bus");
		printf(strerror(ernno)); //Prints out a text string to describe what happened
		return;
	}

