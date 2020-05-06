//Hook up LEDs to pins 2, 4, 5 and 8


byte val; // stores data received from serial port
const int LED1 = 2; // variable for which pin
const int LED2 = 4; // variable for which pin
const int LED3 = 5; // variable for which pin
const int LED4 = 8; // variable for which pin


void setup() {
  pinMode(LED1, OUTPUT); // set pin as output
  pinMode(LED2, OUTPUT); // set pin as output
  pinMode(LED3, OUTPUT); // set pin as output
  pinMode(LED4, OUTPUT); // set pin as output
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  if (val == 0) { // If 0 received
    digitalWrite(LED1, LOW); // turn LEDs off
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
  }
  else if (val == 1) { // If 1 received
    digitalWrite(LED1, HIGH); // turn the LED at pin 1 on
    digitalWrite(LED2, LOW); // other LED off
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
  }
  else if (val == 2) { // If 2 is received
    digitalWrite(LED1, LOW); 
    digitalWrite(LED2, HIGH); 
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
  }
  else if (val == 3) { // If 3 is receievd
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED4, LOW);
  }
  else if (val == 4) { // If 4 is received
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, HIGH);
  }
  else if (val == 5) { // If 5 is received
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, HIGH);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED4, HIGH);
  }
 
 
  delay(10); // Wait 10 milliseconds
}
