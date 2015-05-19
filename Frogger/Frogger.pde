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
PImage caddy;
void setup(){
size(600,500);
a = new Car();
b = new Car();
c = new Car();
d = new Car();
e = new Car();
f = new Car();

background(#1A2C31);
noStroke();
fill(#14E02D);
rect(-1,-10,602,95,20);
rect(-1,415,602,95,20);
caddy=loadImage("caddy.png");
} 
  
void draw() {
  background(#1A2C31);
noStroke();
fill(#14E02D);
rect(-1,-10,602,95,20);
rect(-1,415,602,95,20);
 a.cdraw(112,-20);
 b.cdraw(167, -80);
 c.cdraw(222, -100);
 d.cdraw(277, -25);
 e.cdraw(332, -5);
 f.cdraw(387, -2);
 
  
  
}
  
  
  
