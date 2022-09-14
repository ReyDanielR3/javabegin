void setup(){
  size(500,500);
  
}

void draw(){
  background(0,0,0);
  stroke(255,255,255);
  vierkant(100,80,40,100);
}

void vierkant( int x, int y, int b, int h){
  line(x,y,x+b,y);
  line(x,y+h,x+b,y+h);
  line(x,y,x,y+h);
  line(x+b,y,x+b,y+h);
}
