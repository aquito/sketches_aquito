// Katamari-inspired shape by Aki, i.e. Katamaki

size (200,200);
background (0);
stroke (255);
smooth();

noFill();
rectMode (CENTER);
rect (100,100,20,50); //body
rect (100,60,60,30); //head
line (60,90,90,90); //right hand
line (110,90,140,90); //left hand
line (90,125,80,145); //right leg
line (110,125,120,145); // left leg

ellipseMode (CENTER);
ellipse (100,60,55,25); //face

fill(255);
ellipse(90,60,5,10); //right eye
ellipse(110,60,5,10); //left eye

noFill();
rect (65,60,10,10); //right ear
rect (135,60,10,10); //left ear
line (100,45,110,25); //hat














