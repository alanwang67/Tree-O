class ball {
  color c; 
  float xpos;
  float ypos;
  float xspeed; 
  float yspeed; 

  ball() {
    c = color(random(100));
    xpos = width/2;
    ypos = height/2;
    xspeed = random(500);
    yspeed = 1;
  }  

  void display() {
    fill(c);
    ellipse(10, 10, 10, 10);
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
