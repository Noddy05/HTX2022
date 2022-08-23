

PImage bg;


void setup() {
  size(1685, 1118);
  // The background image must be the same size as the parameters
  // into the size() method. In this program, the size of the image
  // is 640 x 360 pixels.
  bg = loadImage("Aabenraa.png");
}

void draw() {
  background(bg);

  
}
