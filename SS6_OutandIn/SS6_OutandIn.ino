// William Valentin "OutandIN"

// sets up constant integer variables for pins (will not change)

const int buttonPin = 2;   // creates variable called buttonPin and assigns value of 2
const int LED1 = 13;       // creates variable called LED and assigns value of 13
const int LED2 = 12;       // creates variable called LED and assigns value of 12
const int LED3 = 11;       // creates variable called LED and assigns value of 11
const int LED4 = 10;       // creates variable called LED and assigns value of 10
const int LED5 = 9;        // creates variable called LED and assigns value of 9
const int LED6 = 8;        // creates variable called LED and assigns value of 8


// sets up integer variable that will change over time
int buttonState = 0;   // creates variable to track buttonState, assigns initial value of 0


// setup runs once at startup
void setup() {
  pinMode(LED1, OUTPUT);  // initialize LED1 pin as an output.
  pinMode(LED2, OUTPUT);  // initialize LED2 pin as an output.
  pinMode(LED3, OUTPUT);  // initialize LED3 pin as an output.
  pinMode(LED4, OUTPUT);  // initialize LED4 pin as an output.
  pinMode(LED5, OUTPUT);  // initialize LED5 pin as an output.
  pinMode(LED6, OUTPUT);  // initializa LED6 pin as an output.
  pinMode(buttonPin, INPUT);  // initialize pushbutton pin as an input.
}

// loop runs infinitely
void loop() {
  buttonState = digitalRead(buttonPin);    // read the state of the pushbutton value
  delay (10); //small delay for debouncing, to increase accuracy

  // conditional statement
  if (buttonState == HIGH) { // if button is pressed (voltage received on pin 2)
     //STATE 1
  digitalWrite (LED6, LOW); 
  digitalWrite (LED5, LOW); 
  digitalWrite (LED4, HIGH); 
  digitalWrite (LED3, HIGH); 
  digitalWrite (LED2, LOW); 
  digitalWrite (LED1, LOW); 
  delay (100);

  //STATE 2
  digitalWrite (LED6, LOW); 
  digitalWrite (LED5, HIGH); 
  digitalWrite (LED4,  HIGH); 
  digitalWrite (LED3, HIGH); 
  digitalWrite (LED2, HIGH); 
  digitalWrite (LED1, LOW); 
  delay (100);

  //STATE 3 
  digitalWrite (LED6, HIGH); 
  digitalWrite (LED5, HIGH); 
  digitalWrite (LED4, HIGH); 
  digitalWrite (LED3, HIGH); 
  digitalWrite (LED2, HIGH); 
  digitalWrite (LED1, HIGH); 
  delay (100);

  //STATE 4 
  digitalWrite (LED6, HIGH); 
  digitalWrite (LED5, HIGH); 
  digitalWrite (LED4, LOW); 
  digitalWrite (LED3, LOW); 
  digitalWrite (LED2, HIGH); 
  digitalWrite (LED1, HIGH); 
  delay (100);

  //STATE 5
  digitalWrite (LED6, HIGH); 
  digitalWrite (LED5, LOW); 
  digitalWrite (LED4, LOW); 
  digitalWrite (LED3, LOW); 
  digitalWrite (LED2, LOW); 
  digitalWrite (LED1, HIGH); 
  delay (100);

  //STATE 6
  digitalWrite (LED6, HIGH); 
  digitalWrite (LED5, HIGH); 
  digitalWrite (LED4, LOW); 
  digitalWrite (LED3, LOW); 
  digitalWrite (LED2, HIGH); 
  digitalWrite (LED1, HIGH); 
  delay (100);

  //STATE 7
  digitalWrite (LED6, HIGH); 
  digitalWrite (LED5, HIGH); 
  digitalWrite (LED4, HIGH); 
  digitalWrite (LED3, HIGH); 
  digitalWrite (LED2, HIGH); 
  digitalWrite (LED1, HIGH); 
  delay (100);

  // STATE 8
  digitalWrite (LED6, LOW); 
  digitalWrite (LED5, HIGH); 
  digitalWrite (LED4, HIGH); 
  digitalWrite (LED3, HIGH); 
  digitalWrite (LED2, HIGH); 
  digitalWrite (LED1, LOW); 
  delay (100);
  

  // STATE 9
  digitalWrite (LED6, LOW); 
  digitalWrite (LED5, LOW); 
  digitalWrite (LED4, HIGH); 
  digitalWrite (LED3, HIGH); 
  digitalWrite (LED2, LOW); 
  digitalWrite (LED1, LOW); 
  delay (100);

  // STATE 10
  digitalWrite (LED6, LOW); 
  digitalWrite (LED5, LOW); 
  digitalWrite (LED4, LOW); 
  digitalWrite (LED3, LOW); 
  digitalWrite (LED2, LOW); 
  digitalWrite (LED1, LOW); 
  delay (100);
 

  } else {   //otherwise
    digitalWrite(LED1, LOW);      // turn off voltage to LED1 pin
    digitalWrite(LED2, LOW);      // turn off voltage to LED2 pin
    digitalWrite(LED3, LOW);      // turn off voltage to LED3 pin
    digitalWrite(LED4, LOW);      // turn off voltage to LED4 pin
    digitalWrite(LED5, LOW);      // turn off voltage to LED5 pin
    digitalWrite(LED6, LOW);      // turn off voltage to LED6 pin
    
  }
}
