int x = 50;
int speed = 1;

void setup(){
  size(600,500);
  background(0,0,0);
  
  fill(225,225,225);
rectangle();

}
void rectangle(){
rect(x, 80, 200, 200);
}

 void draw(){
   x=x+speed;
   rectangle();
   if(x==400){
     fill(255, 0, 0);
   speed=speed*-1;
   }else if(x==0){
     fill(255, 0, 0);
     speed=speed*-1;
   
     
 }else{
   fill(255, 255, 255);
 }
 }
