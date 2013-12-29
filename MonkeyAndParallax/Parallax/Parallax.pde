// Parallax, a  parallax drawing sketch without the use of 3D
// we use 3 loopable images (sky, mountains, and rails) to "scroll"
// them through the canvas, from right to left at different speeds
//it is also "inifinitely" expandable, meaning that it can since it loops
// its canvas can be dragged out to any width (try it!).

// define our images
PImage sky, mts, rail;

//define the position coordinates of the each image
float skyX,skyY, mtsX,mtsY, railX,railY;

// define the velocity of each image/layer
float vel_sky, vel_mts, vel_rail;

void setup() {
  size(600, 400);
  
  // load our images
  sky = requestImage("sky.png");
  mts = requestImage("mts.png");
  rail = requestImage("rail.png");
  
  // initial positions (mountains and rails are a bit lower than sky)
  skyX = 0; skyY = 0;
  mtsX =0; mtsY = 4;
  railX = 0; railY = 155;
  
  // each layer's velocity, obviously, sky moves/slides slower than mountains and
  // rails faster than mountains,
  vel_sky = 0.25;
  vel_mts = 1;
  vel_rail = 40.0;
}

void draw() {
  background(255);
  
  // draw sky
  // if the image is not at the end, "print" it once on the canvas at its position
  if (skyX > 0) {
    image(sky, skyX-sky.width, skyY);
  }
  // if the image's position + the image's width are not enough to cover the whole canvas, reprint it at the end
  if (skyX+sky.width < width) {
    image(sky, skyX+sky.width, skyY);
  }
  
  // print the image at its position
  image(sky, skyX, skyY);
  
  // calculate the new position of the image based on its velocity
  skyX -= vel_sky;
  
  // if it's all the way out of canvas (to the left) place it at the end of the canvas
  if (skyX+sky.width < 0) {
    skyX += sky.width;
  }  
  
  
  //draw mountains
  // if the image is not at the end, "print" it once on the canvas at its position
  if (mtsX > 0) {
    image(mts, mtsX-mts.width, mtsY);
  }
  // if the image's position + the image's width are not enough to cover the whole canvas, reprint it at the end
  if (mtsX+mts.width < width) {
    image(mts, mtsX+mts.width, mtsY);
  }
  // print the image at its position
  image(mts, mtsX, mtsY);
  // calculate the new position of the image based on its velocity
  mtsX -= vel_mts;
  // if it's all the way out of canvas (to the left) place it at the end of the canvas
  if (mtsX+mts.width < 0) {
    mtsX += mts.width;
  }
  
  
  
  
  // draw rails (same as above)
  if (railX > 0) {
    image(rail, railX-rail.width, railY);
  }
  if (railX+rail.width < width) {
    image(rail, railX+rail.width, railY);
  }
  
  image(rail, railX, railY);
  
  railX -= vel_rail;
  
  if (railX+rail.width < 0) {
    railX += rail.width;
  }
  
  // if there is a mosue button pressed, call change speed function
  if (mousePressed) {
     changeSpeed();
  }
}

void changeSpeed() {
  // lets add an acceleration to the change of speed, to make it more natural
  float acc = .25;
  
  // on a left mouse press, "break"/reduce the velocity by the amount of acceleration
  // while on a right one we accelerate
  if (mouseButton == LEFT) {
    // constrai(value, min, max)n function is a helper function to constrain a value 
    // between a min and max
    vel_rail = constrain(vel_rail-acc, 0, 160);
  }
  if (mouseButton == RIGHT) {
    vel_rail = constrain(vel_rail+acc, 0, 160);
  }
  
  // instead of calculating, through different accelartion values, each layer's velocity
  // after the break/acceleration, we keep the velocity values of the mountains and sky
  // relative to each other (to make sense of the division values here, check each one's
  // initial values).
  vel_mts = vel_rail/40;
  vel_sky = vel_mts/4;
}
