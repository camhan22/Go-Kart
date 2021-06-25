#include <Wire.h>

void setup() {
  Wire.begin();        // join i2c bus (address optional for master)
  Serial.begin(9600);  // start serial for output
  pinMode(5, INPUT_PULLUP);
}

void loop() {
  Wire.requestFrom(8, 2);    // request 6 bytes from slave device #8

  while (Wire.available()) { // slave may send less than requested
    char c = Wire.read(); // receive a byte as character
    char d = Wire.read(); // Read second character

    Serial.print(c, DEC);         // print the character
    Serial.print("-"); //Print a dash
    Serial.println(d, DEC); //Print the status from the controller

    if (digitalRead(5) == 1) { // If the reset pin is on, then reset
      Serial.println("Reset");

      Wire.beginTransmission(8); // transmit to device #8
      Wire.write(113);              // sends one byte
      Wire.endTransmission();    // stop transmitting

      Wire.beginTransmission(8); // transmit to device #8
      Wire.write(230);              // sends one byte
      Wire.endTransmission();    // stop transmitting

      delay(2000);
    }
  }
  delay(300);
}

//Min - 0 and 72
//Max - 27 and 100
