//Frogger
//Mark McCutcheon
//May 14 2015

//create 6 of the car object class
Car a;
Car b;
Car c;
Car d;
Car e;
Car f;
// create a player object
Frog player;
// create image variables
PImage caddy;
PImage frog;
//create playerXY and Speed variables
int pX=300;
int pY=417;
int PS = 8;
//setup score variable
int score;

void setup() {
  size(600, 500);
  //set class variables equal to their class
  a = new Car();
  b = new Car();
  c = new Car();
  d = new Car();
  e = new Car();
  f = new Car();
  player= new Frog();
  //Background
  background(#1A2C31);
  noStroke();
  fill(#14E02D);
  rect(-1, -10, 602, 95, 20);
  rect(-1, 415, 602, 95, 20);
  //loadImages
  caddy=loadImage("caddy.png");
  frog= loadImage("frog.png");
} 

void draw() {
  //ReDraw bachground
  background(#1A2C31);
  noStroke();
  fill(#14E02D);
  rect(-1, -10, 602, 95, 20);
  rect(-1, 415, 602, 95, 20);
  fill(#692C93);
  text("Score"+score, 400, 20);
  //animate players and cars
  player.playerq();
  a.cdraw(112, -20);
  b.cdraw(167, -80);
  c.cdraw(222, -100);
  d.cdraw(277, -25);
  e.cdraw(332, -5);
  f.cdraw(387, -2);
}

//Move player
void keyPressed() { 
  if (keyCode==UP) {
    pY= pY-PS;
  }
  if (keyCode==DOWN) {
    pY= pY+PS;
  }
  if (keyCode==LEFT) {
    pX=pX-PS;
  }
  if (keyCode==RIGHT) {
    pX=pX+PS;
  }
}
