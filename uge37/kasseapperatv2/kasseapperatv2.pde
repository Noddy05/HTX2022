int belobUdenMoms = 100;
float belobMedMoms = 0;
String navn = "Jens";


void setup() {
  size(400,800);
}


void draw() {
  float belobMedMoms = beregnMoms(belobUdenMoms);



  udskrivKvittering();
}


float beregnMoms(int belob) {
  return belob*1.25;
}

void udskrivKvittering() {
  udskrivHoved();
  udskrivKrop();
  udskrivTotal();
}

void udskrivHoved() {
  //Uskriv dato
  String dato = lavDato();
  text(dato,50,20);
}

void udskrivKrop() {
}

void udskrivTotal() {
  text(belobMedMoms, 350, 600);
}

String lavDato() {
  // fra processing.org
  //String.valueOf(day(), "/", month(), year(), hour(), ":", minute());-
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.

  String s = String.valueOf(d);
  
  s = s+"-"+String.valueOf(m);
   
  s = s+"-"+String.valueOf(y);
  
  return s;
}
