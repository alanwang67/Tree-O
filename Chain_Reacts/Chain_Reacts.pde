
ball[] Ball = new ball[40];
void setup() {
  size(600, 600);
  for (int i = 0; i < Ball.length; i++) {
    Ball[i] = new ball();
  }
} 

void draw() {
  for (int i = 0; i < Ball.length; i++) {
    Ball[i].display();
    Ball[i].move();
  }
}
