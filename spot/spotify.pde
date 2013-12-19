Light[] spots = new Light[50];

import processing.video.*;

Movie movie;

void setup () {
  size (320, 200);
  smooth(); 
  movie = new Movie (this, "01-burial_and_four_tet-wolf_cub.aiff");
  
  for (int i=0; i < spots.length; i++) {
    spots[i] = new Light (random (0, width), random (50, height), 255, random (255), random (255), 1, random (10,50), random(0.1,0.5), 0.7);
  } // xpos, ypos, red, green, blue, radius, max radius, grow speed, move speed
}

void draw() {
  background(0);
  for (int i=0; i < spots.length; i++) {
    
  spots[i].pulsate(); // change in size
  spots[i].fade(); // change in color
  spots[i].moveUp();
  spots[i].display();
  }
}

void mousePressed() {
  movie.stop();
  movie.play();
}

