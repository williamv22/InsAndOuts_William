
import processing.serial.*; // imports Serial Library from Processing

Serial myPort; // creates object from Serial Class
int val = 0;
int[] d = new int[1000]; 
int timer;
int max=0; // creates variable for data coming from serial port


void setup() {
  size(700, 700);
  background(0);
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[1]; // change the number in the [] for the port needed
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if (myPort.available() > 0) { // If data is available
    val = myPort.read(); // read it and store in val
  }

  if ( val >= 150) { // reads value range from PhotoCell
    background(0);
    stroke(0);
    fill(0);
    noFill();
    stroke(255, 204, 0);

// creates the ellipses
    for (int i = 0; i<max; i++) {
      ellipse ( width/2, height/2, d[i], d[i] ); 
      d[i]=d[i]+ 1;
    }

    if (millis()-timer>1400) {
      max=max+1; 
      timer = millis();
    }
  }
}
