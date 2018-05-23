class ball {
  int r;
  int g;
  int b;
  float xpos;
  float ypos;
  float xspeed; 
  float yspeed; 

  ball() {
    r = int(random(255));
    g = int(random(255));
    b = int(random(255));
    xpos = width/2;
    ypos = height/2;
    xspeed = random(5);
    yspeed = random(5);
  }  

  void display() {
    fill(r,g,b);
    ellipse(xpos, ypos, 10, 10);
  }

  void move() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if ((xpos > width) || (xpos < 0)) {
      xspeed = xspeed * -1;
    }
    if ((ypos > height) || (ypos < 0)) {
      yspeed = yspeed * -1;
    }
  }
}
