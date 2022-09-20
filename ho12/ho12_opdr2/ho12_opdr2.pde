int seconden;
int aantalSpaties = 0;
int leftamount;
boolean  racing  =  true; 

void setup(){
  size(500,500);
}

void draw(){
background(167,156,10);
  
  seconden  =  millis()/1000;
leftamount = 10 - seconden;
if(seconden >= 10){
   racing = false;
} 
  stroke(0,0,0);
  fill(0,0,0);                                 
  text("Spaties: " + aantalSpaties, 200,200); 
text("secondes left" + leftamount,200,220);
}

void keyReleased(){
  if(keyCode == 32 && racing){
  aantalSpaties  ++;
  }
}
