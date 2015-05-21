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
    ellipse(X,Lane, 4,4);
  }
}
