float count;
float c,d;
void setup(){
  size(1200,800);
  count=0;
  c=600;
  d=600;
}
void draw(){
  background(0,0,0);
  fill(255,255,255);
  count+=1;
  textSize(100);
  text(count/60,100,200);
  mouse(100,100);
  if(keyPressed){
    if (key == 'd') c+=20;
    else if (key== 'a') c-=20;
    else if (key == 'w') d-=20;
    else if (key == 's') d+=20;
  }
  if (c>width) c=0;
  else if (c<0) c=width; 
  if (d>height) d=0;
  else if (d<0) d=height;
  cat(c,d);
  if (sq(c-mouseX)+sq(d-mouseY)<=25000){
    print("score:",count/60);
    exit();
  }
}
void mouse(float a, float b){
  a=mouseX;
  b=mouseY;
  circle(a,b,100);
}
void cat(float c, float d){
  fill(255,0,0);
  circle(c,d,200);
}
  
  
  
 
