/*
William Valentin; 
"Valentin's Pizza Gallery"
Instructions: Click the mouse to move to next state; press any key to change the background to a random color.
When on the second state, press the right arrow to change to the last state.

*/

String state= "preGame"; //storing our states as Strings 
int ellipseY=0; //y value of ellipse

// variables for random values ------------------
float r = 255;
float g = 255;
float b = 255;

// Loads in the Images ----------------------------
PImage pizzaBox;
PImage[] AllPizza = new PImage[5];
float moving = 0;

//Pizza p0;
//Pizza p1;

//Array for placeholder where Pizza Images go ---------------------------
Pizza[] Pizzas = new Pizza[100];

void setup() {
  size (900, 900);
  textAlign(CENTER);
  textSize(36);
// loads Pizza guy image on first state ---------------------------
  pizzaBox = loadImage("pizzaBox.png");
  imageMode(CENTER);
  
// For loops for placeholders and Pizza Images ------------------------------------------
  for (int i = 0; i< AllPizza.length; i++) {
   AllPizza[i] = loadImage("Pizza"+i+".png"); 
  } 
   for(int i = 0; i < Pizzas.length; i++) {
     int index = int(random(0, AllPizza.length));
     Pizzas[i] = new Pizza(AllPizza[index], 80);
   }
}

// Class that holds variables for the Pizzas to move & show on second state ------------------------------------------
class Pizza {
  float x;
  float y;
  float diameter;
  float yspeed;
  PImage img;
  
  Pizza(PImage tempImg, float tempD) {
    x = width/2;
    y = height;
    diameter = tempD;
    yspeed = random(0.5, 2.5);
    img = tempImg;
  }
  void ascend() {
    y = y - yspeed;
    x = x + random(-10, 10);
  }
  void display() {
    stroke(0);
    fill(127);
    //ellipse(x, y, diameter, diameter);
    imageMode(CENTER);
    image(img, x, y, diameter, diameter);
  }
  void top() {
    if (y < diameter/2) {
      y = diameter/2;
    }
  }
}


// Start of the State changes -----------------------------------------
void draw() {
  if (state=="preGame") {
    preGame();
  } else if (state=="game") {
    game();
  } else if (state=="gameOver") {
    gameOver();
  }
  println(state);
}


//triggers different states depending on which state already in ---------------------
void mousePressed() {
  if (state== "preGame") {
    state="game";
  } else if (state=="gameOver") {
    state= "preGame";
  }
}



//USER-DEFINED FUNCTIONS ------------------------------------
void preGame() {
  background(r, g, b);
  moving = moving + 0;
  fill(0);
  text("Welcome to Valentin's Pizza Gallery", width/2, 200);
  translate(0, 0);
    rotate(radians(moving));
    for(int i=0; i<=3; i++){
  image(pizzaBox, width/2, height/2, 400, 400);
    }
}

// This is for the second state change ----------------------------------
void game() {
  background(r, g, b);
    for(int i = 0; i < Pizzas.length; i++) {
    Pizzas[i].ascend();
    Pizzas[i].display();
    Pizzas[i].top();
    }
  
  }
//}

// This is for the last state change ----------------------------------------
void gameOver() {
  background(r, g, b);
  fill(0);
  textSize(25);
  text("Please enjoy your complimentary slice.", 600, 600);
  text("click to start the gallery over.", 600, 650);
  
// Start of the Pizza Slice ----------------------
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

// Random Function ---------------------------------------------------------
void keyPressed(){
  r = random(255);
  g = random(255);
  g = random(255);
// When in Second state to change into last state ------------------------------------  
  if (key == CODED) {
   if (keyCode == RIGHT) {
    state="gameOver"; 
   }
  }
}
