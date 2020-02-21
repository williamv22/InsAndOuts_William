/* William Valentin, "Grab A Slice", 
Move your mouse to the right, top left and bottom left.
Press the mouse to change colors.
*/

//creating global variables
float r = 255;
float g = 255;
float b = 255;


void setup(){
  size(1080, 720);
}

void draw(){
  background(r, g, b);
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
  
}
//event function
void mousePressed(){
  r = random(255);
  g = random(255);
  b = random(255);
}