void setup(){
size(2000,2000);
background(0,0,0);
noStroke();
colorMode(HSB, height + width,1,1);
}

void draw(){

}

void mouseMoved(){
 println(mouseY+mouseX);
 fill(mouseY + mouseX,10,10);
 rect(mouseX,mouseY,100,100);
}
