PImage happy;
PImage angry;

boolean morGlad = false;
boolean farSur = true;
boolean sosterSur = true;
boolean blomst = false;
boolean rydOp = false;
boolean ol = false;
boolean slaaGraes = false;
boolean penge = false;
boolean toj = false;


void setup() {
  size(400, 300);
  happy = loadImage("happy100.jpg");
  angry = loadImage("angry100.jpg");
  textSize(24);
}

void draw() {
  drawGrid();
  placerText();
  placeHappyFaces();


    //morGlad = gorMorGlad();
    if (blomst && !farSur && !sosterSur && rydOp) {
      gorMorGlad();
    }
    else{
      morGlad= false;
    }
    
    if (ol && slaaGraes) {
      farSur= false;
    }
    else{
      farSur= true;
    }
    
    if (penge || toj) {
      sosterSur = false;
    }
    else{
      sosterSur = true;
    }
    
    
    
    
  }

void mouseClicked(){
float x = mouseX;
float y = mouseY;
println(x);

if (x>100 && x<200 && y > 0 && y <100){rydOp = true;  }
if (x>200 && x<300 && y > 0 && y <100){blomst = true; }

if (x>100 && x<200 && y > 100 && y <200){ol = true;  }
if (x>200 && x<300 && y > 100 && y <200){slaaGraes = true; }

if (x>100 && x<200 && y > 200 && y <300){penge = true;  }
if (x>200 && x<300 && y > 200 && y <300){toj = true; }

}


  void  gorMorGlad() {
    morGlad = true;
  }

  void gorMorSur() {
    morGlad = false;
  }

  void gorFarGlad() {
    farSur = false;
  }

  void gorFarSur() {
    farSur = true;
  }

  void drawGrid() {
    for (int i=0; i<width; i=i+100) {
      line(i, 0, i, height);
      line(0, i, width, i);
    }
  }

void placerText(){
  fill(0);
  text("MOR",20,50);
  text("Ryd op",110,50);
  if (rydOp){
    fill(125,0,0);
    square(100,0,100);
    fill(0);
  }
  text("Blomst",210,50);
  if (blomst){
    fill(125,0,0);
    square(200,0,100);
    fill(0);
  }
  
  text("FAR",20,150);
  text("Øl",110,150);
  if (ol){
    fill(125,0,0);
    square(100,100,100);
    fill(0);
  }
  text("Slå græs",210,150);
  if (slaaGraes){
    fill(125,0,0);
    square(200,100,100);
    fill(0);
  }
  text("SØS",20,250);
  text("Penge",110,250);
  if (penge){
    fill(125,0,0);
    square(100,200,100);
    fill(0);
  }
  text("Tøj",210,250);
  if (toj){
    fill(125,0,0);
    square(200,200,100);
    fill(0);
  }
}

void placeHappyFaces(){
if (morGlad==true) {
    image(happy, width-100, 0);
  }
  else{
    image(angry, width-100, 0);
  }
  
  if (farSur==true) {
    image(angry, width-100, 100);
  }
  else{
    
    image(happy, width-100, 100);
  }
  
  if (sosterSur==true) {
    image(angry, width-100, 200);
  }
  else{
    
    image(happy, width-100, 200);
  }

}
