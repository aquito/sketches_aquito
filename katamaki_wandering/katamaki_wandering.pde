// Katamari-inspired shape by Aki, i.e. Katamaki
float x = 127
float y = 127


void setup() {
  size (255,255);
  smooth();
}

void draw() {
background (0);
stroke (255);


noFill();
rectMode (CENTER);
rect (mouseX,mouseY,20,50); //body (100,100,20,50)
rect (mouseX,mouseY-40,60,30); //head
line (mouseX-40,mouseY-10,mouseX-10,mouseY-10); //right hand
line (mouseX+10,mouseY-10,mouseX+40,mouseY-10); //left hand
line (mouseX-10,mouseY+25,mouseX-20,mouseY+45); //right leg
line (mouseX+10,mouseY+25,mouseX+20,mouseY+45); // left leg

ellipseMode (CENTER);
fill (mouseX, mouseY, mouseX+mouseY); //color changes
ellipse (mouseX,mouseY-40,55,25); //face

fill(255);
ellipse(mouseX-10,mouseY-40,5,10); //right eye
ellipse(mouseX+10,mouseY-40,5,10); //left eye

noFill();
rect (mouseX-35,mouseY-40,10,10); //right ear
rect (mouseX+35,mouseY-40,10,10); //left ear
line (mouseX,mouseY-55,mouseX+10,mouseY-75); //hat

}

void mousePressed() {
  println("Katamari!");
}

void keyPressed() {
  background (255);
}









