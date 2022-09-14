void setup(){
 size(500,500);
 
}

void draw(){
  background(255,255,255);
  drawRichtC(250,250,200,20);
}

void drawRichtC(int a, int b, int sizeC, int aantal){
  for(int i = 0; i < aantal; i++){
    ellipse(a -  sizeC/2,b,sizeC,sizeC);
    sizeC -= 10;
  }
}
