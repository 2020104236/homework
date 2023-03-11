float a,b;
void setup(){
  int x,y,z;
  x=400; y=400; z=600; 
  size(1200,800);
  fill(244,176,199);
  circle(x,y,z);
  eye(x,y,z);
  mouse(x,y,z);
  kirby(x,y,z);
}
void eye(float x,float y,float z){
  x=x-(0.13*z) ;
  y=y-(0.08*z);
  a=0.12*z;
  b=0.29*z;
  fill(5,115,192);
  strokeWeight(8);
  ellipse(x,y,a,b);
  x=x+(0.26*z);
  ellipse(x,y,a,b);
  fill(0,0,0);
  strokeWeight(2);
  y=y-(0.03*z);
  a=0.11*z; b=0.2*z;
  ellipse(x,y,a,b);
  x=x-(0.26*z);
  ellipse(x,y,a,b);
  fill(255,255,255);
  y=y-(0.05*z);
  a=0.07*z; b=0.12*z;
  ellipse(x,y,a,b);
  x=x+(0.26*z);
  ellipse(x,y,a,b);
}
void mouse(float x,float y,float z){
  strokeWeight(10);
  fill(244,176,199);
  //200,200 다시하기//
  y=y+(0.12*z); a=0.14*z; b=0.08*z; 
  arc(x,y,a,b,radians(20),radians(160));
}
void kirby(float x,float y,float z){
  fill(235,105,151);
  strokeWeight(0);
  x=x+(0.32*z); y=y+(0.06*z);
  a=0.19*z; b=0.11*z;
  ellipse(x,y,a,b);
  x=x-(0.64*z);
  ellipse(x,y,a,b);
}
