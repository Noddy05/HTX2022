/* //<>//
 * Opg 1) på linje 17 (Uændret: linje 2)
 * Opg 2) I house er der 3 funktioner, setup(), draw() og mouseClicked()
 * Opg 3) Klassen Room tager 4 parametre, navn, lys (true-false), x-position og y-position
 * Opg 4) Der er 4 klasse-attributter
 * Opg 4.a) 4 variabler og 2 konstanter. Variabler: navn, om der er lys, position (x og y). Konstanter: width og height (Størrelse på rummet)
 * Opg 4.b) Der er egentligt ikke nogen konstanter, men jeg tænker vi tæller width og height med som konstanter
 *          4 variabler
 * Opg 4.c) Der er 4 variabler som bestemmer klassens tilstand
 * Opg 5) Taget bliver tegnet på linje 29-30 (Uændret: linje 12-13) Ny funktion er på linje 49
 * 
*/





//lav et rum //<>// //<>//
//OPGAVE 6
Room[] house = new Room[6];
String[] roomNames = new String[] { // OPG 7
  "Room", "Kitchen", "Livingroom", "Toilet", "Bedroom", "Bathroom"
};

void setup() {
  size(800, 800);
  background(205);
  for(int y = 0; y < 2; y++){
    for(int x = 0; x < 3; x++){
      house[x + y * 3] = new Room(roomNames[x + y * 3], false, 100 + x * 100, 300 + y * 100);
    }
  }
}

void draw() {
  // tegn taget
  //fill(50); FJERNET OPG 5
  //triangle(50, 290, 250, 150, 450, 290);
  // tegn rum
  for(int i = 0; i < house.length; i++){ // OPG 8
    house[i].drawRoom();
  }
  house[house.length - 1].drawRoof();
}

void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80 + 200, 680, 300 + 200, 30);
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  for(int i = 0; i < house.length; i++){ // OPG 9
    if (house[i].isRoomClicked(mouseX, mouseY))
      house[i].printLight();
  }
  
  checkHouse();
  //Jeg gider ikke se at den blinker så jeg caller draw() hver gang jeg klikker
  draw();
}

void checkHouse(){
  boolean light = false;
  println();
  for(int i = 0; i < house.length; i++){
    if(house[i].isLightOn()){
      light = true;
      println("Light in room " + house[i].getRoomName());
    }
  }
  
  if(light)
    println("Du skal slukke det lys, makker");
  else
    println("Du kan smutte uden bekymringer");
}
