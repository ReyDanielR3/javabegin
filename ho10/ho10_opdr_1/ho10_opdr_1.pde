import controlP5.*;

import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(500,500);
  
cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1").setSize(100,50).setPosition(50,50).setCaptionLabel("klik mij");
  knop2 = cp.addButton("Knop2").setSize(100,50).setPosition(350,50).setCaptionLabel("klik mij");
  
}

void draw(){
 background(0,0,255); 
}

void knop1(){
  println("Helaas fout");
}

void knop2(){
  println("Goed gedaan");
}
