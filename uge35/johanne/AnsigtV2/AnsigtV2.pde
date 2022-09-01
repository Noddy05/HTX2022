void setup() {
  size(800, 1200);
}
void draw() {
  ///face();
  //eyes();
  //nose();
  //mouth();
  hat(100,50);
  hat(450,50);
  //lines();
  line(100,0,100,height);
  line(300,0,300,height);
  line(450,0,450,height);
  line(650,0,650,height);
  line(0,50,width,50);
  line(0,250,width,250);
}


void face() {
  circle(width/2, 350, 350);
}

void eyes() {
  square(220, 250, 70);
  square(110, 250, 70);
}

void nose() {
  circle(width/2, 350, 130);
}

void mouth() {
  arc(200, 425, 150, 150, 0, PI, CHORD);
}

void hat(float x, float y) {
  fill(0);
  square(x, y, 200);
  fill(250);
  strokeWeight(20);
  line(x-50, y+210, x+250, y+210);
  
  // husk du skal rydde op efter dig!!! 
  strokeWeight(1);

}

void lines() {
  strokeWeight(1);
  line(width/2, 0, width/2, height);
  line(0, 350, width, 350);
}
