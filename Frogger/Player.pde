class Frog {

  void playerq() {

    image(frog, pX, pY);
    if (pY<= 30) {
      pY= 430;
      score+=1;
      speedshift+=1;
      println(speedshift);
    
  }
    
  }

}
