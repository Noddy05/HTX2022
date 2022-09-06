
void setup() {
  size(600, 600); // sætter størrelsen på mit canvas
}

void draw() {
  background(225); //sætter baggrund til at være næsten kridhvid
  
  drawCenterRect();
  drawCornerRect();

}

void drawCenterRect(){
  pushMatrix(); // gemmer canvas
  translate(150, 150); // flytter mit 0,0 til 150,150
  rotate(frameCount/100.0); // roterer skærmen et antal radians bestemst af min konstant framrate
  
  rect(-50, -25, 100, 50); // for at få et objekt til at rotere om sig selv skal center være inde i ovjektet.
  popMatrix(); // gendan skærm;

}

void drawCornerRect(){
  pushMatrix();
  translate(300, 300);
  rotate(frameCount/25.0);
  println(frameRate);
  rect(0, 0, 100, 50); // roterer om hjørne punktet
  popMatrix();

}
