class Frog {

  void playerq() {

    image(frog, pX, pY);
    if (pY<= 30) {
      pY= 410;
      score= score+1;
    }
  }

  void hitChek() {
    if (pX>=a.X && pX <= a.X + 70 && pY >= a.Lane && pY <= a.Lane + 35) {
      //do this 
      println("squish");
    }
    if (pX>=a.X && pX <= a.X + 70 && pY >= a.Lane && pY <= a.Lane + 35) {
      //do this 
      println("squish");
    }
    if (pX>=b.X && pX <= b.X + 70 && pY >= b.Lane && pY <= b.Lane + 35) {
      //do this 
      println("squish");
    }
    if (pX>=c.X && pX <= c.X + 70 && pY >= c.Lane && pY <= c.Lane + 35) {
      //do this 
      println("squish");
    }
    if (pX>=d.X && pX <= d.X + 70 && pY >= d.Lane && pY <= d.Lane + 35) {
      //do this 
      println("squish");
    }
    if (pX>=e.X && pX <= e.X + 70 && pY >= e.Lane && pY <= e.Lane + 35) {
      //do this 
      println("squish");
    }
    if (pX>=f.X && pX <= f.X + 70 && pY >= f.Lane && pY <= f.Lane + 35) {
      //do this 
      println("squish");
    }
  }
}
