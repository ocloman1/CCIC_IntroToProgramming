int value = 0;
String [][] gameBoard = {
{" "," "," "},
{" "," "," "},
{" "," "," "}};
void setup(){
  size(400,400);
drawgameBoard();
}
void drawgameBoard(){
  rect(-1,-1,401,401);
  fill(0,0,0);
  rect(0,125,400,10);
  rect(0,250,400,10);
  rect(125,0,10,400);
  rect(250,0,10,400);
}
void draw(){
  line(20,mouseY,80,mouseY);
  line(mouseX,20,mouseX,80);
  fill(value);
  noStroke();
  rect(25,25,50,50);
}
void mouseClicked(){
  if(value==0){
    value=255;
  }else{
    value=0;
  }
  println("clicked!");
  print("X"+mouseX);
  println("Y"+mouseY);
  size(400,400);
  line(120,80,340,300);
}
