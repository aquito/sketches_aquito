Monster aMonster;

void setup() {
  size (400,300);
  smooth();
  aMonster = new Monster(350,50);
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

   
  Monster (float monsterX_, float monsterY_, float monsterSize_, float monsterXDistance_, float monsterYdistance_) {
    monsterX = monsterX_;
    monsterY = monsterY_;
    monsterSize = monsterSize_;
    monsterXdistance = monsterXdistance_;
    monsterYdistance = monsterYdistance_;
  }

void display () {
  rectMode(CENTER);
  fill(0,0,0);
  rect(monsterX,monsterY,monsterSize_,monsterSize_);
  
}

void move () {
  monsterXdistance = mouseX - monsterX;
  monsterYdistance = mouseY - monsterY;
  
  if (monsterXdistance > 0 || monsterYdistance > 0) {
  x = x - 1;
  y = y - 1;
}
  else {
  x = x + 1;
  y = y + 1; 
  }
}

}

