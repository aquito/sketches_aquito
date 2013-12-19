Eye theEye;

void setup() {
  size (400,300);
  smooth();
  theEye = new Eye(200,150);
}

void draw() {
  background(0);
  theEye.display();
  theEye.move();
}

class Eye {
  
  float x;
  float y;
 // boolean eyeOpen;
 // float speed;
  
  
  Eye (float x_, float y_) {
    x = x_;
    y = y_;
   // eyeOpen = eyeOpen_;
  
  }

void display () {
  ellipseMode(CENTER);
  noFill();
  stroke(255);
  ellipse(x,y,60,30);
  ellipse(x,y,30,28);
}

void move () {
  x = mouseX;
  y = mouseY;
}

}  
    
