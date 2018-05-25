class Ball {  
  public final static int moving=0;
  public final static int growing=1;
  public final static int shrinking=2;
  public final static int dead=3;
  public final static float changeFactor=0.25;
  public final static float maxSize=200;

  float xspeed;
  float yspeed;
  float xcor;
  float ycor;
  float size;
  color c;
  int state;
  Ball(int s) {
    xcor=random(200, 400);
    ycor=random(200, 400);
    size=random(25, 50);
    xspeed=random(3,10)*pow(-1, int(random(2)));
    yspeed=random(3,10)*pow(-1, int(random(2)));
    c=color(random(0, 255), random(0, 255), random(0, 255));
    state=s;
    //fill(r, g, b);
    //ellipse(xCor, yCor, size, size);
  }
  Ball(int s, int x, int y) {
    xcor=x;
    ycor=y;
    size=random(25, 50);
    xspeed=random(3, 10)*pow(-1, int(random(2)));
    yspeed=random(3, 10)*pow(-1, int(random(2)));
    c=color(random(0, 255), random(0, 255), random(0, 255));
    state=s;
    //fill(r, g, b);
    //ellipse(xCor, yCor, size, size);
  }
  void display() {
    fill(c);
    ellipse(xcor, ycor, size, size);
  }
  void act() {
    if (state==0) {
      bounce();
      xcor+=xspeed;
      ycor+=yspeed;
    }
    if (state==1) {
      if (size<maxSize) {
        size+=changeFactor;
      } else {
        state=2;
      }
    }
    if (state==2) {
      if (size>0) {
        size-=changeFactor;
      } else {
        state=3;
      }
    }
  }
  void bounce() {
    if (xcor<size/2||xcor>600-size/2) {
      xspeed*=-1;
    }
    if (ycor<size/2||ycor>600-size/2) {
      yspeed*=-1;
    }
  }
}
