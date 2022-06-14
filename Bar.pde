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
