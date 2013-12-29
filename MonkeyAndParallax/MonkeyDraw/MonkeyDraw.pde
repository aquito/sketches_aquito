// MonkeyDraw, a Paint-like sketch with a monkey

// define the monkey image object
PImage monkey;
// and the current color one
color currentColor;

void setup() {
  size(600, 600);
  
  // load the monkey image by calling requestImage
  // instead of loadImage, this way we save time/resources
  // by multithreading the loading process
  monkey = requestImage("monkey.png");
  
  // draw the background color only once (since this
  // is a Paint-like sketch)
  background(255);
}

void draw() {
  // the image command works very much like the rect
  // one. we use imageMode(CENTER) here to use the center
  // of the image as its pivot point.
  imageMode(CENTER);
  // draw the image at the center of the canvas
  image(monkey, width/2, height/2);
  
  // check mouse button actions, if the right one is pressed
  // calll pickColor function, if the left one is pressed
  // call drawBrush.
  if (mousePressed) {
    if(mouseButton == RIGHT) {
     pickColor();
    } else if (mouseButton == LEFT){
    drawBrush();
    }
  }
}


void pickColor() {
  //the get(int x, int y) function return the color value of that
  // pixel (positioned at x , y) on the canvas.
  currentColor = get(mouseX,mouseY);
}

void drawBrush() {
  // draw a small circle with the current color
  fill(currentColor);
  noStroke();
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, 5, 5);
}
