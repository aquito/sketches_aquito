// Monkey, a simple sketch with a monkey image

// PImage is the Processing's texture, 2D image object
PImage monkey;

void setup() {
  size(600, 600);
  
  // we initialize the PImage object not with as usual
  // monkey = new PImage(something); but by calling its
  // loadImage method. In the argument we add the path/name of 
  // the asset loaded.
  monkey = loadImage("monkey.png");
}

void draw() {
  background(255);
  
  // to draw the image we use the image command
  // image(theinameObject, posxX, posY)
  image(monkey, mouseX, mouseY);
}

