/* William Valentin, "Grab A Slice", 
Move your mouse to the right, top left and bottom left.
Press the mouse to change colors.
*/

//creating global variables
float r = 255;
float g = 255;
float b = 255;

float a = 255;
float c = 255;
float d = 255;

PImage pizzaBox;
float moving = 0;


void setup(){
  size(1080, 720);
   pizzaBox = loadImage("pizzaBox.png");
  imageMode(CENTER);
}

void draw(){
   background(r, g, b);
  
   stroke(0);
   strokeWeight(2);
  for (int i=0; i<=width; i+=20){
    line(i, 0, i, height);
  }
  for (int i=0; i<=height; i+=20){
    line(0, i, width, i);
  }
  for (int i=0; i<=height; i+=20){
    line(i, 0, width, i);
  }

  // This starts the ellipses
  fill(a, c, d);
  stroke(0);
  strokeWeight(5);
  for (int i=0; i<=width; i+=5){
    ellipse(0 + i * 5, 15, 25, 25);
  }
    for (int i=0; i<=width; i+=5){
    ellipse(10, 0 + i * 5, 25, 25);
  }
    for (int i=0; i<=width; i+=5){
    ellipse(1070, 0 + i * 5, 25, 25);
  }
    for (int i=0; i<=width; i+=5){
    ellipse(0 + i * 5, 710, 25, 25);
  }
  

  //This starts the pizza
  stroke(219, 162, 74);
 strokeWeight(50);
  //right side of background
   if (mouseX > width/2){
    fill(225, 216, 0);
    arc(width/2, height/2, 600, 600, HALF_PI, PI);
     noStroke();
     fill(255, 0, 0);
     ellipse(400, 500, 40, 40);
     ellipse(500, 450, 40, 40);
     ellipse(450, 400, 40, 40);
     ellipse(450, 550, 40, 40);
    
  }
  
  //left bottom side of background
  else if(mouseY > height/2){
    fill(225, 216, 0);
    arc(width/2, height/2, 600, 600, 0, HALF_PI);
     noStroke();
     fill(255, 0, 0);
     ellipse(600, 600, 40, 40);
     ellipse(700, 500, 40, 40);
     ellipse(650, 400, 40, 40);
    
  }
  else {
    //left top side of background
    fill (225, 216, 0);
    arc(width/2, height/2, 600, 600, PI, TWO_PI);
    noStroke();
    fill(255, 0, 0);
    ellipse(400, 250, 40, 40);
    ellipse(700, 250, 40, 40);
    ellipse(550, 300, 40, 40);
  }
  
  if (keyPressed == true) {
     background(0);
     moving = moving + .8;
     textSize(40);
     fill(r, g, b);
    text("ORDER UP", 425, 100);
    translate(400, 100);
   rotate(radians(moving));
    for(int i=0; i<=3; i++){
      image(pizzaBox, 200 + i*100, 150, 200, 200);
     
    }
  }

}

//event function
void mousePressed(){
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  c = random(255);
  d = random(255);
}
