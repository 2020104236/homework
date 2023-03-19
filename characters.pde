void bear(float x, float y, float d){
  fill(110,50,50);
  noStroke();
  circle(x,y,d);
  circle(x-75*d/200,y-65*d/200,80*d/200);
  circle(x+75*d/200,y-65*d/200,80*d/200);
  fill(255);
  ellipse(x-45*d/200,y-25*d/200,40*d/200,30*d/200);
  ellipse(x+45*d/200,y-25*d/200,40*d/200,30*d/200);
  fill(30);
  ellipse(x-45*d/200,y-25*d/200,28*d/200,30*d/200);
  ellipse(x+45*d/200,y-25*d/200,28*d/200,30*d/200);
  noStroke();
  fill(0);
  ellipse(x,y+20*d/200,20*d/200,10*d/200);
  stroke(0);
  strokeWeight(3*d/200);
  noFill();
  stroke(0);
  ellipse(x,y+35*d/200,80*d/200,60*d/200);
  line(x,y+20*d/200,x,y+40*d/200);
  noFill();
  arc(x-10*d/200,y+40*d/200,20*d/200,10*d/200,0,PI);
  arc(x+10*d/200,y+40*d/200,20*d/200,10*d/200,0,PI);
}
void lion (float x, float y, float s){
  noStroke();
  fill(204,130,0);
  circle(x,y,s);
  circle(x+0.35*s,y-0.35*s,0.167*s);
  circle(x-0.35*s,y-0.35*s,0.167*s);
  fill(0,0,0);
  circle(x,y+0.05*s,0.06*s);
  circle(x+0.2*s,y-0.1*s,0.04*s);
  circle(x-0.2*s,y-0.1*s,0.04*s);
  fill(255,255,255);
  circle(x+0.04*s,y+0.1*s,0.1*s);
  circle(x-0.04*s,y+0.1*s,0.1*s);
  fill(0,0,0);
  rect(x-0.26*s,y-0.18*s,0.1*s,0.015*s); 
  rect(x+0.15*s,y-0.18*s,0.1*s,0.015*s); 
}
void kirby(float x, float y, float z){
  if (z==100) fill(244,176,199);
  else fill(0,178,255);
  circle(x,y,z);
  eye(x,y,z);
  mouth(x,y,z);
  pink(x,y,z);
}
void eye(float x,float y,float z){
  float a,b;
  x=x-(0.13*z) ;
  y=y-(0.08*z);
  a=0.12*z;
  b=0.29*z;
  fill(5,115,192);
  strokeWeight(4);
  ellipse(x,y,a,b);
  x=x+(0.26*z);
  ellipse(x,y,a,b);
  fill(0,0,0);
  strokeWeight(1);
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
void mouth(float x,float y,float z){
  float a,b;
  strokeWeight(2);
  fill(244,176,199);
  y=y+(0.12*z); a=0.14*z; b=0.08*z; 
  arc(x,y,a,b,radians(20),radians(160));
}
void pink(float x,float y,float z){
  float a,b;
  fill(235,105,151);
  strokeWeight(0);
  x=x+(0.32*z); y=y+(0.06*z);
  a=0.19*z; b=0.11*z;
  ellipse(x,y,a,b);
  x=x-(0.64*z);
  ellipse(x,y,a,b);
}
