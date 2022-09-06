int r =0;
void setup() {
  size(700, 600);
}

void draw() {
  background(0, 0, 225);
  drawLandscape(); // tegner de to bakker

  translate(0+r, 0); // bevæger baggrunden fremad
  r++;
  if (r>200) { // for at få den til at tegne nye skyer nulstiller jeg r
    r=0;
  }

  for (int i =0; i < width+200; i++) { // for at undgå at skyerne bare forsvinder, er jeg nød til at forlænge width
    if (i % 200==0) {    // hver gang jeg kan dividere i med 200 uden af det giver en rest skal den tegne nye skyer. Det hedder modulu
      drawClouds(i-200, 0);
      drawClouds(i-150, 150);
    }
  }
}



void drawLandscape() {
  // jeg tegner landskabet som to store cirkler
  fill(0, 225, 0);
  stroke(0, 225, 0);
  circle(100, 900, 800);
  circle(300, 900, 800);
}

void drawClouds(int x, int y) {
  // jeg tegner skyerne som 6 cirkler
  fill(255);
  stroke(255);
  circle(x, y, 75);
  circle(x+25, y-30, 70);
  circle(x+25, y+30, 70);
  circle(x+50, y-30, 70);
  circle(x+50, y+30, 70);
  circle(x+75, y, 70);
}
