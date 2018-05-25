ball[] Ball = new ball[int(random(25,35))];

void setup() {
  background(255);
  size(600, 600);
  for (int i = 0; i < Ball.length; i++) {
    Ball[i] = new ball();
  }
} 

void draw() {
  background(255);
  for (int i = 0; i < Ball.length; i++) {
    Ball[i].display();
    Ball[i].move();
  }
}
