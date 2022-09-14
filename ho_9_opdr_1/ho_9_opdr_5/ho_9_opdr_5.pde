String zin;

void setup(){
  zin = langezin("een","heel","groot","gezin");
  println(zin);
}


void draw(){
  
}

String langezin(String a, String b, String c, String d){
  String antwoord;
  antwoord = a + " " + b + " "+ c + " " + d;
  return antwoord;
}
