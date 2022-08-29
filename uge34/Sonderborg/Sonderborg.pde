/**
 * Background Image. 
 * 
 * This example presents the fastest way to load a background image
 * into Processing. To load an image as the background, it must be
 * the same width and height as the program.
 */

PImage bg;

void setup() {
  size(1629, 1273);
  // The background image must be the same size as the parameters
  // into the size() method. In this program, the size of the image
  // is1629 x 1273 pixels.
  bg = loadImage("Sønderborg.png");
}

void draw() {
  background(bg);
  strokeWeight(5);
  line(width/2,0,width/2,height);
  
  line (0,height/2,width,height/2);
  

}
