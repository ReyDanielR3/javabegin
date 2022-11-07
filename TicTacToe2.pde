int xwaarde;
int rectSize;
int boardInit[] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, 5, 5, 5, 5, 5, 5, 5};
String gameEnd[] = {"gelijkspel", "Player 1 win","Player 2 win"};
int board[] = new int[16];
int ywaarde;
int x;
int y;
int xBlockStart;
int yBlockStart;
int veld;
int turn;
int gameState;
int win;
int player1 = 0;
int player2 = 0;

void setup() {
  fullScreen();
// size(520,520);
  background(0,100,155);
  fill(255);
  stroke(0);
  strokeWeight(4);
  gameState = 1;
  rectSize = 100;
  
  xBlockStart = (width/2) - ((rectSize*3)/2);
  yBlockStart = (height/2) - ((rectSize*3)/2);
  xwaarde = xBlockStart;
  ywaarde = yBlockStart;
  turn = 0;
  loop();
  arrayCopy(boardInit, board);       
  
  for (int i =0; i<9; i++) {

    if (i  % 3 == 0 && i != 0) {
      ywaarde +=rectSize;
      xwaarde = (width/2) - ((rectSize*3)/2);
    }
    rect(xwaarde, ywaarde, rectSize, rectSize);
    xwaarde += 100;
  }
}

void draw() {
  score();
  if(gameState == 1){
    x = (((mouseX-xBlockStart)+rectSize)/rectSize)-1;
    y = (((mouseY-yBlockStart))/rectSize);
    //println(lineCheck(), x,y,turn, veld);
    veld = 0;
    for (int i =0; i<9; i++)  {
     veld = veld + board[i];
    }
    win = lineCheck();
    if(win == 0 || win == 1 || veld > 3 ){gameState = 0; if(win == 0){player1++;}if(win == 1){player2++;}}
  }else if (gameState == 0){background(0,255,0); textAlign(CENTER, CENTER); textSize(48); text(gameEnd[win+1], width/2, height/2); x = -100; y = -100;}
  
  //println(x + (y *3));


} 
void  mouseReleased() {   
  if(gameState == 0){setup();}
  if(x >= 0 && x < 3 && y < 3 && board[x + (y*3)] == -1){
    if(turn == 0){
      ellipse( ((x*rectSize)+xBlockStart) + rectSize/2, ((y*rectSize)+yBlockStart) + rectSize/2, rectSize/2,rectSize/2); 
    }
      if(turn == 1){
      line( (x*rectSize + xBlockStart)+rectSize/4, (y*rectSize + yBlockStart) +rectSize/4, ((x*rectSize + rectSize) +xBlockStart) - rectSize/4, ((y*rectSize + rectSize)+yBlockStart) - rectSize/4);  
      line( ((x*rectSize + rectSize) +xBlockStart) - rectSize/4 , (y*rectSize + yBlockStart) +rectSize/4, (x*rectSize + xBlockStart)+rectSize/4 , ((y*rectSize + rectSize)+yBlockStart) - rectSize/4); 
      //line(x*100 + 60, y*100 + 60, 50,50);  x*rectSize + xBlockStart (x*rectSize + xBlockStart)+rectSize/4
    }
   board[x + (y *3)] = turn;
   turn++;
  turn = turn % 2;
  }
 
}

int lineCheck(){
  int i = 0, i2 = 0, tester = board[i2];
  while(board[i2] == tester && i < 3){i++; i2 = i2 +  1;}
  if(i == 3){return tester;}
  
  i = 0; i2 = 3; tester = board[i2];
  while(board[i2] == tester && i < 3){i++; i2 = i2 +  1;}
  if(i == 3){return tester;}
  
  i = 0; i2 = 6; tester = board[i2];
  while(board[i2] == tester && i < 3){i++; i2 = i2 +  1;}
  if(i == 3){return tester;}
  
  i = 0; i2 = 0; tester = board[i2];
  while(board[i2] == tester && i < 3){i++; i2 = i2 +  3;}
  if(i == 3){return tester;}
  
  i = 0; i2 = 1; tester = board[i2];
  while(board[i2] == tester && i < 3){i++; i2 = i2 +  3;}
  if(i == 3){return tester;}
  
  i = 0; i2 = 2; tester = board[i2];
  while(board[i2] == tester && i < 3){i++; i2 = i2 +  3;}
  if(i == 3){return tester;}
  
  i = 0; i2 = 0; tester = board[i2];
  while(board[i2] == tester && i < 3){i++; i2 = i2 +  4;}
  if(i == 3){return tester;}
  
  i = 0; i2 = 2; tester = board[i2];
  while(board[i2] == tester && i < 3){i++; i2 = i2 +  2;}
  if(i == 3){return tester;}
  

 return -1;
}


void score(){
 textSize(40);
 textAlign(BASELINE, TOP);
 text("Player 1: " + str(player1), 20, 0);
 text("Player 2: " + str(player2), 20, 48);
}
