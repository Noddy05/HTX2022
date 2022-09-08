int dir =1;
int myFrameCount=0;
float myRadian = 0.1f;

void setup() {
  size(600, 600); // sæt størrelse på canvas
}

void draw() {
  background(227); // farven på baggrunbd

  myRadian = myRadian + 0.1 * dir; // beregning af antallet af radianer mit hjul skal dreje. Bruger jeg til rotate

  if (dir > 0) {  // hvis retningen er fra  højre mod venstre 
    myFrameCount++;  
  } else // hvis retningen er fra  venstre mod højre 
  {
    myFrameCount--;
  }
  
  if (myFrameCount > 600  || myFrameCount < 0) {  // ændre retningen på hjulet
    dir = dir * -1;
  }
  
  translate(myFrameCount, 200); // flyt papiret
  rotate(HALF_PI*myRadian); // drejer papiret
  circle(0, 0, 100);   // tegner en cirkel
  line (-50, 0, 50, 0); // laver et eger
}
