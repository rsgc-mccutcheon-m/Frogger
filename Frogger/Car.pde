class Car {

  int speed;
  int X=-30;
  int Lane;
  int shiftX=52;
  int shiftY=18;

  Car() {
    X = int(random(width)); 
    speed = (int(random(2, 7)));
  }
  //road width is 330
  //lane width with 6 cars is 55
  void cdraw(int Lane2, int Start) {
    
    Lane=Lane2;
    if (X<= 680) {
      X= X+speed+speedshift;
      if (X>=680) {
        X=-100;
      }
    }
    image(caddy, X, Lane);
    ellipse(X+shiftX, Lane+shiftY, 4, 4);
    //check if the car hits the frog. The car x and lane(y)are translated to just ahead of the windsheild.
    if ((pX +frogWd)>=X+shiftX && pX <= X+shiftX && (pY +frogHt)>= Lane+shiftY && pY <= Lane+shiftY) {
      //do this 
      println("squish");
      pY=430;
        lives-=1;
    }
  }
}
