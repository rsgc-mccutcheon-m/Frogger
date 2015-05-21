class Frog {
int frogWd = 30;
int frogHt = 32;
  void playerq() {

    image(frog, pX, pY);
    if (pY<= 30) {
      pY= 410;
      score= score+1;
    }
  }

  void hitChek() {
    //check if a hit has occured
    
    if ((pX +frogWd)>=a.X && pX <= a.X && (pY +frogHt)>= a.Lane && pY <= a.Lane) {
      //do this 
      println("squish");
    }
    if ((pX +frogWd)>=b.X && pX <= b.X && (pY +frogHt)>= b.Lane && pY <= b.Lane) {
      //do this 
      println("squish");
    }
    if ((pX +frogWd)>=c.X && pX <= c.X && (pY +frogHt)>= c.Lane && pY <= c.Lane) {
      //do this 
      println("squish");
    }
    if ((pX +frogWd)>=d.X && pX <= d.X && (pY +frogHt)>= d.Lane && pY <= d.Lane) {
      //do this 
      println("squish");
    }
    if ((pX +frogWd)>=e.X && pX <= e.X && (pY +frogHt)>= e.Lane && pY <= e.Lane) {
      //do this 
      println("squish");
    }
    if ((pX +frogWd)>=f.X && pX <= f.X && (pY +frogHt)>= f.Lane && pY <= f.Lane) {
      //do this 
      println("squish");
    }
  }
}
