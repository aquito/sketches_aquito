Monster aMonster;

void setup() {
  size (400,300);
  smooth();
  aMonster = new Monster(200,50,25);
}

void draw() {
  background(0);
  aMonster.display();
  aMonster.move();
}

class Monster {
  
  float monsterX;
  float monsterY;
  float monsterSize;
  float monsterXdistance;
  float monsterYdistance;

   
  Monster (float monsterX_, float monsterY_, float monsterSize_) {
    monsterX = monsterX_;
    monsterY = monsterY_;
    monsterSize = monsterSize_;
   
  }

void display () {
  rectMode(CENTER);
  fill(255,255,255);
  rect(monsterX,monsterY,monsterSize,monsterSize);
  
}

void move () {
  monsterXdistance = mouseX - monsterX;
  monsterYdistance = mouseY - monsterY;
  
  if (monsterXdistance > 0 || monsterYdistance > 0) {
  monsterX = monsterX - 1;
  monsterY = monsterY - 1;
}
  else {
  monsterX = monsterX + 1;
  monsterY = monsterY + 1; 
  }
}

}

