#include <Wire.h>

void setup() {
  Wire.begin();        // join i2c bus (address optional for master)
  Serial.begin(9600);  // start serial for output
}

void loop() {
  Wire.requestFrom(8, 2);    // request 6 bytes from slave device #8

  while (Wire.available()) { // slave may send less than requested
    char c = Wire.read(); // receive a byte as character
    char d = Wire.read(); // Read second character
    
    Serial.print(c, DEC);         // print the character
    Serial.print("-"); //Print a dash
    Serial.println(d,DEC); //Print the status from the controller
  }
  delay(300);
}
