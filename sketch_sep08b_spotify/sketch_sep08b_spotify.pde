float x=0;
float y=0;
float r;
float g;
float b;
float a;

void setup () {
  size (400,250);
  background(0);
  smooth();
  frameRate(5);
}


void draw () {
  
float rad;

  ellipseMode(CORNER);
    
  for (float y=100; y<height; y=y+random(20,50)) {
    
for (float x=0; x<width; x=x+random(20,30)) {
  r = random (255);
  b = random (255);
  g = random (255);
  a = random (255);
  for (rad = 1; rad < 20; rad = rad +0.1) {
  fill (r,g,b,a);
  ellipse(x,y,rad,rad);
  }
}
  

}  

}
