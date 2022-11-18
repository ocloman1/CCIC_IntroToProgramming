String player1;
String player2;
int turn;
boolean hasChoosen;
String [][] gameBoard=
{{"","",""},
 {"","",""},
 {"","",""}};
void setup(){
  size(400,400);
  setupGame();
  drawgameBoard();
}
void draw(){
  println(mouseX);
 drawgameBoard();
}

void setupGame(){
  background(0);
  textSize(30);
  text("Player 1 choose your piece",10,50);
  text("X",35,200);
  text("O",300,200);
  player1 ="X";
  hasChoosen = true;
}

void mouseClicked(){
  if(mouseX<200&& hasChoosen == false){
    player1="X";
    player2="O";
    hasChoosen = true;
  }else if(mouseX<200&& hasChoosen == false){
    player1="O";
    player2="X";
    hasChoosen = true;
  }

    makeMove();
  
}

void drawgameBoard(){
 
    fill(255, 255, 255);
    rect(-1,-1,401,401);
    fill(0,0,0);
    rect(0,125,400,10);
    rect(0,250,400,10);
    rect(125,0,10,400);
    rect(250,0,10,400);
    
    for(int i =0; i < gameBoard.length; i=i+1){
      for(int j =0; j< gameBoard.length; j=j+1){
        if(gameBoard[i][j] !=""){
          textSize(90);
          text(gameBoard[i][j],(400/3*j)+(400/3)*0.5,(400/3*i)+400/3*0.5);
         }
      }
  
}
  }
  void makeMove(){
    //Checksif we clicked upper left hand coner and if its free
    if(mouseX < 125 && mouseY < 125 && mouseX >= 0 && mouseY >= 0 && gameBoard[0][0]==""){
    if(turn % 2 ==0){
    gameBoard[0][0] = player1;
    }else{
      gameBoard[0][0] = player2;
    }
     
      gameBoard[0][0]=player1;
    
    }
    if(mouseX > 125 && mouseX < 250 && mouseY < 125 && gameBoard[0][1]==""){
      if(turn % 2 ==0){
      gameBoard[0][1]=player1;
    }else{
      gameBoard[0][1] = player2;
    }
    if(mouseX > 250 && mouseY < 125 && gameBoard[0][2]==""){
      if(turn % 2 ==0){
      gameBoard[0][2]=player1;
  }else{
    gameBoard[0][2]=player2;
  }
   if(mouseX > 0 && mouseX < 125 && mouseY > 125 && gameBoard[1][0]==""){
     if(turn % 2 ==0){
     gameBoard[1][0]=player1;
     }else{
       gameBoard[1][0]=player2;
      
   }
    if(mouseX > 125 && mouseX < 250 && mouseY > 125 && mouseY < 250 && gameBoard[1][1]==""){
      if(turn % 2 ==0){
      gameBoard[1][1]=player1;
      }else{
        gameBoard[1][1]=player2;
  }
  if(mouseX > 250 && mouseY > 125 && mouseY < 250 && gameBoard [1][2]==""){
    if(turn % 2 ==0){
      gameBoard[1][2]=player1;
    }else{
      gameBoard[1][2]=player2;
  }
  if(mouseX < 125 && mouseY > 250 && gameBoard [2][0]==""){
    if(turn % 2 ==0){
      gameBoard[2][0]=player1;
    }else{
      gameBoard[2][0]=player2;
}
 if(mouseX > 125 && mouseY > 250 && gameBoard [2][0]==""){
   if(turn % 2 ==0){
      gameBoard[2][0]=player1;
   }else{
     gameBoard[2][0]=player2;
  }
   if(mouseX > 125 && mouseX < 250 && mouseY > 250 && gameBoard [2][1]==""){
     if(turn % 2 ==0){
      gameBoard[2][1]=player1;
     }else{
       gameBoard[2][1]=player2;
  }
   if(mouseX > 250 && mouseY > 250 && gameBoard [2][2]==""){
     if(turn % 2 ==0){
      gameBoard[2][2]=player1;
     }else{
       gameBoard[2][2]=player2;
  }
   }
   
