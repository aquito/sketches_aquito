int x=0;
int y=0;
float r;
float g;
float b;
float a;

void setup () {
  size (400,400);
  background(0);
  smooth();
}

void draw () {
  
  
  rectMode(CORNER);
  
  for (int y=0; y<height; y=y+20) {
    
for (int x=0; x<width; x=x+20) {
  r = random (255);
  b = random (255);
  g = random (255);
  a = random (255);
  fill (r,g,b,a);
  rect(x,y,20,20);
}

  noLoop();
}
}
