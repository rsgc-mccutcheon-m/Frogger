class Frog {

  void playerq() {

    image(frog, pX, pY);
    if (pY<= 30) {
      pY= 410;
      score= score+1;
    }
  }

  void hitChek() {
    //check if a hit has occured
    
    if ((pX +28)>=a.X && pX <= a.X && (pY +30)>= a.Lane && pY <= a.Lane) {
      //do this 
      println("squish");
    }
  }
}
