ArrayList<Ball> balls;
ArrayList<Ball> kronos;
void setup() {
  background(0);
  size(600, 600);
  balls=new ArrayList<Ball>();
  kronos=new ArrayList<Ball>();
  for (int i=0; i<30; i++) {
    balls.add(new Ball(0));
  }
}
void draw() {
  background(255);

  for (int i=0; i<balls.size(); i++) {
    if (balls.get(i).state==3) {
      balls.remove(i);
      i--;
    }
    else if (balls.get(i).state==0) {
      for (int j=0; j<kronos.size(); j++) {
        if (touch(balls.get(i), kronos.get(j))) {
          balls.get(i).state=1;
          kronos.add(balls.get(i));
          j=kronos.size();
        }
      }
    }
    if(i>-1){
    balls.get(i).display();
    balls.get(i).act();
    }
  }
}
void mouseClicked() {
  Ball tmp=new Ball(1,mouseX,mouseY);
  balls.add(tmp);
  kronos.add(tmp);
}

boolean touch(Ball a, Ball b) {
  float gap=gap(a, b);
  return gap<=a.size/2+b.size/2;
}

float gap(Ball a, Ball b) {
  return sqrt(sq(a.xcor-b.xcor)+sq(a.ycor-b.ycor));
}
