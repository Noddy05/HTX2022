
void setup() {
  size(800, 800);
  //frameRate(910);
}

void draw() {
  background(255);
  
  head();
  spine();
  legs();
}

void head() {
  circle(frameCount, 240, 160);
}

void spine() {
  line(frameCount, 320, frameCount, 600);
}

void legs() {

  pushMatrix();
  translate(frameCount, 600);
  if (second() % 2 == 0) {
    rotate(PI*0.4);
  } else {
    rotate((PI*0.6));
  }

  line(0, 0, 200, 0);

  popMatrix();
}
