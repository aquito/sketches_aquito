

class Light {
  
  float r;
  float g;
  float b;
  float xpos;
  float ypos;
  float rad;
  float growSpeed;
  float moveSpeed;
  float maxRad;
  
  Light (float xpos_, float ypos_, float r_, float b_, float g_, float rad_, float maxRad_, float growSpeed_, float moveSpeed_) {
    xpos = xpos_;
    ypos = ypos_;
     r = r_;
     b = b_;
     g = g_;
     rad = rad_;
     maxRad = maxRad_;
     growSpeed = growSpeed_;
     moveSpeed = moveSpeed_;
  }  
  
  void display () {
    ellipseMode (CENTER);
    fill (r,g,b);
    ellipse(xpos, ypos, rad, rad);
  }
  
  void pulsate() {
    rad = rad + growSpeed;
    if ((rad > maxRad) || (rad < 1)) {
      growSpeed = growSpeed * -1;
      
    }
  }
    void fade() {
       g = g + 1;
       b = b + 1;
      if (g > 254 || b > 254) {
        g = 0;
        b = 0;
      }
    }
    
    void moveUp() {
          ypos = ypos - moveSpeed;
          if (ypos+maxRad < 0 || ypos+maxRad > height) {
            ypos = random(20, height);
    }
    }
}

