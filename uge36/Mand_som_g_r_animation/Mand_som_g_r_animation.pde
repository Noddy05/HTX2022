float myFrameCount =0;
float oldFrameCount=0;
void setup() {
  size(1600, 800);
}

void draw() {
  background(255);
  
  if (myFrameCount>width){ //<>//
    oldFrameCount = frameCount;
  }
  myFrameCount = frameCount - oldFrameCount;

  head();
  spine();
  legs();
}

void head() {
  circle(myFrameCount, 240, 160);
}

void spine() {
  line(myFrameCount, 320, myFrameCount, 600);
}

void legs() {

  
  pushMatrix();
  translate(myFrameCount, 600);
  rotate(PI*0.4);
  
  line(0, 0, 200, 0);
  popMatrix();
  
  
  pushMatrix();
  translate(myFrameCount, 600);
  rotate((PI*0.6));
  line(0, 0, 200, 0);
  popMatrix();
    
}
