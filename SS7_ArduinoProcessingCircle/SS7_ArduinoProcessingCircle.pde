/*
  By William Valentin
 */

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port
float r = random(255);
float g = random(255);
float b = random(255);
float a = random(255);
float c = random(255);
float d = random(255);
float ellipseX;
float ellipseY;
float ellipseX1;
float ellipseY1;

void setup() {
  size(900, 900);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[1]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  if ( val == 0) {
    background(0);
  }

  //draws an ellipse with vak range up to 100
  background(255);
  fill (a, c, d);
  if ( val > 0) {
    background(r, g, b);
    ellipse (width/2, height/2, 200, 200);
  }
  
  // draws two ellipses with val range from 100-200
  if ( val >= 100) {
   background(r, g, b);
   ellipseX = random(width);
   ellipseY = random(height);
   ellipseX1 = random(width);
   ellipseY1 = random(height);
   fill( a, c, d);
   ellipse(ellipseX, ellipseY, 100, 100);
   ellipse(ellipseX1, ellipseY1, 400, 400);
  }

  // draws a pizza when val range is equal or above 200
  if ( val >= 200) {
      background(r, g ,b);   
      fill (175, 82, 0);
      noStroke();
      quad(75, 50, 425, 50, 400,100, 100, 100);
      fill(204, 153, 0);
      noStroke();
      triangle(100, 100, 400, 100, 250, 450);
      fill (149, 11, 11);
      noStroke();
      ellipse(175, 175, 40, 40);
      fill (149, 11, 11);
      ellipse(250, 145, 35, 35);
      fill (149, 11, 11);
      ellipse(250, 395, 40, 40);
      fill (149, 11, 11);
      ellipse(225, 330, 40, 40);
      fill (149, 11, 11);
      ellipse(225, 282, 35, 35);
      fill (149, 11, 11);
      ellipse(300, 225, 35, 35);
      fill (149, 11, 11);
      ellipse(325, 175, 35, 35);
      fill (149, 11, 11);
      ellipse(250, 235, 40, 40);
      fill(106, 88, 71);
      arc(300, 275, 25, 25, 0, PI+QUARTER_PI, PIE);
      fill(106, 88, 71);
      arc(145, 140, 25, 25, 0, PI+QUARTER_PI, PIE);
      fill(106, 88, 71);
      arc(245, 190, 30, 25, 0, PI, PIE);
      fill(33, 121, 0);
      arc(275, 300, 25, 25, 0, PI+QUARTER_PI, CHORD);
      fill(33, 121, 0);
      arc(350, 150, 25, 25, 0, PI+QUARTER_PI, CHORD);
      fill(33, 121, 0);
      arc(200, 250, 25, 25, 0, PI+QUARTER_PI, CHORD);
  
  }
  println (val); //prints to Processing console
}
