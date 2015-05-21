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
//setup score variables
int score;
int highscore;
//setup 
//create strings for title screen text
String title="Welcome to FROGGER!";
String info ="Cross the road, but DONT get hit!";

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
  //ReDraw background
  
  background(#1A2C31);
  noStroke();
  fill(#14E02D);
  textSize(40);
   text(title,90, 212);
   textSize(16);
  text(info, 175, 260);
  rect(-1, -10, 602, 95, 20);
  rect(-1, 415, 602, 95, 20);
  fill(#692C93);
  text("Score"+score, 400, 20);
  //animate players and cars
  player.playerq();
  a.cdraw(106, -20);
  b.cdraw(161, -80);
  c.cdraw(216, -100);
  d.cdraw(271, -25);
  e.cdraw(326, -5);
  f.cdraw(381, -2);
   player.hitChek();
   fill(255,0,0);
   rect(pX,pY, player.frogWd, player.frogHt);

}

//Move player
void keyPressed() { 
  if(keyPressed) {
    title= " ";
    info=" ";}
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
