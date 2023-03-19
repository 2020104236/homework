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
