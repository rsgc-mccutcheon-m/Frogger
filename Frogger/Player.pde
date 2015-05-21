class Frog {

  void playerq() {

    image(frog, pX, pY);
    if (pY<= 30) {
      pY= 410;
      score= score+1;
      speed= speed+1;  
  }
    
  }

  void hitChek() {
    //check if a hit has occured
  }
}
