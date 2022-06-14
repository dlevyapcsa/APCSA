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
