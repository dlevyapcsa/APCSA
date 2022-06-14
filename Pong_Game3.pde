Ball b;
Bar recbar;
int score=0;
boolean stop = false;

//setup method
void setup() {
  size(500, 500);
  background(51, 204, 225);
  rect(200, 450, 100, 25);
  b= new Ball(250, 250,-5,2,25);
  recbar = new Bar(200,450,100,25);
 
}

//draw method
public void draw(){
  background(51, 204, 225);
  b.show();
  b.move();
  b.bounce();
  recbar.show();
  recbar.cornerx=mouseX-recbar.w/2;
 
  textSize(50);
  text(score,250,100);
  if (stop == false){
    score++;
  }
  
}

//ball class
public class Ball {
  private float centerX;
  private float centerY;
  private float Xspeed;
  private float Yspeed;
  private float radius;
  Ball(float centerX, float centerY, float Xspeed, float Yspeed, float radius) {
    this.centerX=centerX;
    this.centerY=centerY;
    this.Xspeed=Xspeed;
    this.Yspeed=Yspeed;
    this.radius=radius;
  }
   public void show(){
     circle(centerX, centerY, radius*2);
    
   }
   public void move(){
     centerY+=Yspeed;
     centerX+=Xspeed;
     
   }
   
   public void bounce(){
     if(centerX+radius>width || centerX-radius<0){
       Xspeed*=-1;
     }
       if( centerY-radius<0){
       Yspeed*=-1;
     }
     if(centerY+radius >= recbar.cornery  && centerX+radius > recbar.cornerx && centerX-radius < recbar.cornerx+100){
       Yspeed*=-1;
      
     }
     
   if(centerY+radius>height){
     Xspeed=0;
     Yspeed=0;
     stop = true;
   }
   
   }
   
}

//bar class
public class Bar{
  private int cornerx;
  private int cornery;
  private int w;
  private int h;
  Bar(int cornerx, int cornery, int w, int h){
    this.cornerx=cornerx;
    this.cornery=cornery;
    this.w=w;
    this.h=h;
    
  }
   public void show(){
    rect(cornerx, cornery, w, h );
   }
  
}
