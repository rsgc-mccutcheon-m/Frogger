class Frog {

  void playerq() {

    image(frog, pX, pY);
    if (pY<= 30) {
      pY= 410;
      score+=1;
      speedshift+=1;
      println(speedshift);
    
  }
    
  }

  void hitChek() {
    //check if a hit has occured
  }
}
