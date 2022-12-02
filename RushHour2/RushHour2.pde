int car1X;
int car1Y;
boolean car1Clicked;
int car2X;
int car2Y;
boolean car2Clicked;

void setup(){
  size(600,600);
  car1X = 0;
  car1Y = 200;
  car1Clicked =false;
  car2X = 0;
  car2Y = 200;
  car2Clicked =false;
}

void draw(){
  println ("x" + mouseX);
  println ("y" + mouseY);
  background(0,0,255);
  drawCar(car1X, car1Y);
  if(car1Clicked == true){
    moveCar1();
  println ("x" + mouseX);
  println ("y" + mouseY); 
    drawCar(car2X, car2Y);
  if(car2Clicked == true){
    moveCar2();
  }
}
}
void mousePressed(){
  car1Clicked = true;
  car2Clicked = true;
}

void mouseReleased(){
  car1Clicked = false;
  car2Clicked = false;
}
void drawCar(int x, int y){
  rect(x, y, 70, 40);
}
void moveCar1(){
  car1X = mouseX;
}
void moveCar2(){
  car2X = mouseY;
}
  
