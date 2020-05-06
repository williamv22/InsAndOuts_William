// William Valentin

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

float d = 0; // variable for controlling ellipse size

void setup() {
  size(500, 500); 
  noFill();
  stroke(255, 204, 0);
  strokeWeight(10);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background(0);
  if (mousePressed == true) {
    d = d+1;
    ellipse(width/2, height/2, d, d);
  }

  //ellipse size controls communication to Serial 
  if (d <= 50) {  // ellipse size less than 50
    myPort.write(0); //send a 0
    println ("0");  // print '0' to console
  } 
  if (d >= 50) {  // ellipse size greater than 50
    myPort.write(1); // write '1' to Serial port
    println("1"); // also print '1' to console
  } 
  if (d >= 150) {
    myPort.write(2);  //write '2' to Serial port
    println ("2"); //print to '2' to console
  }
  if (d >= 200) {
    myPort.write(3); // write '3' to serial port
    println("3");    // print '33 to console
  }
  if (d >= 300) {
    myPort.write(4); // write '4' to serial port
    println("4"); // print '4' to console
  }
  if (d > 500) {  //otherwise
    myPort.write(5); //send a 5
    println ("5");  // print '5' to console
  }

  if (mousePressed == false) {
    d = 0;
  }
}
