int car1X;
int car1Y;
boolean car1LeftRight;
int car2X;
int car2Y;
boolean car2LeftRight;
boolean car1Clicked;
boolean car2Clicked;
void setup(){
  size(400,400);
  car1X = 0;
  car1Y = 0;
  car1Clicked = false;
  car1LeftRight = true;
  car2X = 0;
  car2Y = 0;
  car2Clicked = false;
  car2LeftRight = false;
}
void draw(){
  background (0,0,0); //Black Background
drawCar(car1X, car1Y, car1LeftRight);
drawCar(car2X, car2Y, car2LeftRight);

if(car1Clicked == true){
  moveCar1();
}else if(car2Clicked == true){
  moveCar2();
}
 }
 void mousePressed(){
   car1Clicked = true;
 }
 void mouseRelased(){
   car1Clicked = false;
 }
 void drawCar(int x, int y, boolean upDown){
   if(upDown == true){
     rect(x,y,50,60);
   }else{
     rect(x,y,60,50);
   }
 }
 void moveCar1(){
   car1X = mouseX;
 }
 void moveCar2(){
   car2Y = mouseY;
 }

  
