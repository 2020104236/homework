float count,speeditemcount,bigitemcount,point;
float a,b;
float [] x,y;
/*  speed big  point spawntime
   x [0]  [1]   [2]    [3]
   y [0]  [1]   [2]    [3]      */
void setup(){
  x= new float[4]; y= new float[4];
  a=1000; b=600; 
  for (int i=0; i<4; i++){
  x[i]=random(200,1600); y[i]=random(200,700);
  }
  x[3]=random(300,900); y[3]=random(300,900);
  count=0;
  point=0;
  size(1800,950);
}
void draw(){
  background(255,255,255);
  fill(0,0,0);
  count+=1;
  textSize(100);
  text((count/60)+point,1500,100);
  textSize(200);
  text("Bear vs Lion",400,500);
  mouse();
   if(keyPressed){ 
    if (key == 'd') a+=speed(speeditemcount);
    else if (key== 'a') a-=speed(speeditemcount);
    else if (key == 'w') b-=speed(speeditemcount);
    else if (key == 's') b+=speed(speeditemcount);
    }
    if (a>width) a=0;
  else if (a<0) a=width; 
  if (b>height) b=0;
  else if (b<0) b=height;
  keyboard(a,b,big(bigitemcount));
  //speed item - x[0] y[0] time: x[3] //
  if (count>=x[3]){
  if (sq(x[0]-a)+sq(y[0]-b)<=sq(big(bigitemcount))){
    speeditemcount=1;
    x[0]=5000; y[0]=5000; //유배//
  }
  if (sq(x[0]-mouseX)+sq(y[0]-mouseY)<=sq(100)){
    speeditemcount=0;
    x[0]=5000; y[0]=5000; 
  }
  if (sq(x[0]-a)+sq(y[0]-b)>=sq(big(bigitemcount)) &&  sq(x[0]-mouseX)+sq(y[0]-mouseY)>=10000){
    speeditem(x[0],y[0]);
    x[0]+=random(-10,10); y[0]+=random(-10,10);
  }
  }
  // big item -x[1] y[1] time:y[3] //
  if (count>=y[3]){
  if (sq(x[1]-a)+sq(y[1]-b)<=sq(big(bigitemcount))){
    bigitemcount=1;
    x[1]=5000; y[1]=5000;
  }
  if (sq(x[1]-mouseX)+sq(y[1]-mouseY)<=sq(100)){
    bigitemcount=0;
    x[1]=5000; y[1]=5000;
  }
  if (sq(x[1]-a)+sq(y[1]-b)>=sq(big(bigitemcount)) &&  sq(x[1]-mouseX)+sq(y[1]-mouseY)>=10000){
    bigitem(x[1],y[1]);
    x[1]+=random(-10,10); y[1]=random(-10,10);
  }
  }
  // count item - x[2] y[2] tiem:[3]
  if (count>=(x[3]+y[3])/2){
  if (sq(x[2]-a)+sq(y[2]-b)<=sq((big(bigitemcount)))){
    point=-5;
    x[2]=5000; y[2]=5000; 
  }
  if (sq(x[2]-mouseX)+sq(y[2]-mouseY)<=sq(100)){
    point=5;
    x[2]=5000; y[2]=5000;
  }
  if (sq(x[2]-a)+sq(y[2]-b)>=sq(big(bigitemcount)) &&  sq(x[2]-mouseX)+sq(y[2]-mouseY)>=10000){
    countitem(x[2],y[2]);
    x[2]+=random(-10,10); y[2]+=random(-10,10);
  }
  }
// catch
float d;
d=sq(big(bigitemcount)/2)+18000;
if (sq(a-mouseX)+sq(b-mouseY)<=d){
    print("score:",(count/60)+point);
    exit();
  }
}
void mouse(){
  lion(mouseX,mouseY,100);
}
void keyboard(float a, float b,float z){
  fill(255,0,0);
  bear(a,b,z);
}
float big(float a){
  if (count>=1200) return 700;
  else if (a==1) return 500;
  else return 300;
}
float speed(float a){
  if (count>=1080) return 60;
  else if (a==1) return 35;
  else return 20;
}
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
