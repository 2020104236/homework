void speeditem(float x , float y){
  kirby(x,y,100);
}
void bigitem(float x, float y){
  kirby(x,y,101);
}
void countitem(float x, float y){
  fill(255,255,0);
  circle(x,y,100);
  fill(0,0,0);
  textSize(50);
  text("P",x-10,y+10);
  
}
