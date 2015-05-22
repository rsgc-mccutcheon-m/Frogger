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
PImage lose;
PImage rage;
//create playerXY and Speed variables
int pX=290;
int pY=430;
int PS = 8;
//setup score variables
int score;
int highscore;
String hScore =" ";
int lives = 3;
//setup 
//create strings for title screen text
String title="Welcome to FROGGER!";
String info ="Cross the road, but DONT get hit!";
//declare hitbox adjustment variables
int frogWd = 30;
int frogHt = 32;
//create car related variables
int speedshift=0;
//run lose menu
boolean runAgain= false;
boolean runRage =false;

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
  lose= loadImage("frogd.png");
} 

void draw() {
  //ReDraw background
  if (lives>0) {
    background(#1A2C31);
    blendMode(BLEND);
    noStroke();
    fill(#14E02D);
    textSize(40);
    text(title, 90, 212);
    text(hScore, 140, 200);
    textSize(16);
    text(info, 175, 260);
    rect(-1, -10, 602, 95, 20);
    rect(-1, 415, 602, 95, 20);
    fill(#692C93);
    text("Score: "+score, 400, 20);
    text("Highscore: "+highscore, 300, 20);
    text("Lives: "+lives, 30, 20);
    
    //animate players and cars
    player.playerq();
    a.cdraw(106, -20);
    b.cdraw(161, -80);
    c.cdraw(216, -100);
    d.cdraw(271, -25);
    e.cdraw(326, -5);
    f.cdraw(381, -2);
    //fill(255,0,0);
    //rect(pX,pY, frogWd, frogHt);
    //check if the player has lost
  }
  if (lives == 0) {
    background(255, 0, 0);
    fill(#6727A7);
    rect(150, 226, 100, 50);
    rect(350, 226, 100, 50);
    fill(#37BC60);
    text("Play Again", 160, 255);
    fill(#212114);
    text("Rage", 377, 257);
    text("Your Score: "+score,244,128);
    text("Highscore: "+highscore, 248, 150);
    image(lose, 274, 180);
  }
  //check to see if rage is to be run
  if (runRage== true) {
    background(int(random(0, 255)), int(random(0, 100)), int(random(0, 170))); 
    image(lose, 218, 189);
    image(lose, 365, 192);
    image(lose, 286, 240);
    image(lose, 365, 299);
    image(lose, 226, 310);
  }
  //check to see if Play Again has been run
  if (runAgain==true) {
    lives=3;
    pY= 430;
    score=0;
    runAgain = false;
  }
  //update highscore
  if (score> highscore) {
    highscore= score;
    println("NEW HIGHSCORE! "+highscore);
    hScore= "NEW HIGHSCORE!"; 

  }
}

//Check which lose menu option to run
void mouseReleased() {
  if (mouseX>= 150 && mouseX <= 200 && mouseY>=226 && mouseY <= 276) {
    runAgain=true;
    println("Play Again");
  } else {
    runAgain=false;
  }

  if (mouseX>=350 && mouseX<= 450 && mouseY >=226 && mouseY <= 276) {
    runRage=true;
  } else {
    runRage= false;
  }
}
//Move player
void keyPressed() { 
  if (keyPressed) {
    title= " ";
    info=" ";
  }
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
  if (hScore != " ") {
    hScore = " ";
  }
  
}
