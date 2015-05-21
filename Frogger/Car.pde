class Car {

  int speed = 6;
  int X=-30;
  int Lane;
   
  Car() {
    X = int(random(width)); 
    speed = int(random(2, 7));
  }
  //road width is 330
  //lane width with 6 cars is 55
  void cdraw(int Lane2, int Start) {
    Lane=Lane2;
    if (X<= 680) {
      X= X+speed;
      if (X>=680) {
        X=-100;
      }
    }
    image(caddy, X, Lane);
    ellipse(X+52,Lane+18, 4,4);
    
   if ((pX +frogWd)>=X+52 && pX <= X+52 && (pY +frogHt)>= Lane+18 && pY <= Lane+18) {
      //do this 
      println("squish");
      pY=410;
    } 
  }
}
