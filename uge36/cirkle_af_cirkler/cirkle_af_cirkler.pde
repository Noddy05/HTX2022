int i = 0; 

void setup(){
  size(1200, 1200);
  background(255);
}

void draw(){
  drawSquare();
  
  for(int i = 0; i < 8; i++){
    pushMatrix();
    translate(width/2,height/2);
    rotate(QUARTER_PI*i );
    drawCircle(0,100);
    popMatrix();
    println(QUARTER_PI*i);
  }
}

void drawCircle(float x, float y){
  fill(255, 0, 0);
  circle(x, y, 100);
}

void drawSquare(){
  fill(0, 0, 255);
  rect(width/2-100, height/2-100, 200, 200);
}
