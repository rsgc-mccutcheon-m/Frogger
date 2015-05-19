class Car {

  int speed = 6;
  int X=-30;

Car() {
  float w = width;
 X = int(random(w)); 
 speed = int(random(2,7));
}
  //road width is 330
  //lane width with 6 cars is 55
  void cdraw(int Lane, int Start) {

    if (X<= 680) {
      X= X+speed;
      if (X>=680) {
        X=-100;
      }
    }
    image(caddy, X, Lane);
  }
}
