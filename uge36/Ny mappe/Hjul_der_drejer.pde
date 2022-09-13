int laengde = 0;

void setup() {
  size(600, 600); // sætter størrelsen på mit canvas
  }

void draw() {
  background(225); //sætter baggrund til at være næsten kridhvid
    laengde ++;

  translate(laengde, 150); // flytter mit 0,0 til 150,150
  rotate(HALF_PI * 0.01); // roterer skærmen et antal radians bestemt af min konstant framrate

  circle(0, 0, 100);

  strokeWeight(5);
  line(-50, 0, 50, 0); // for at få et objekt til at rotere om sig selv skal center være inde i objektet.
  line(0, -50, 0, 50);
  
  strokeWeight(1);


}

void drawMatrix() {
  strokeWeight(0);
  for (int i = 0; i < width; i = i+10) {
    line(i, 0, i, height);
    line(0, i, width, i);
  strokeWeight(1);
  }
}
