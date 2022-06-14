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
