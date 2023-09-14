void setup(){
  size(500,500);
  background(255);//背景是白色
}

void draw(){
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }//畫線(滑鼠座標mouseX,mouseY ,到之前滑鼠座標pmouseX,pmouseY);
}

void keyPressed(){
  if(key=='1') stroke(255,0,0);//按1 筆觸紅
  if(key=='2') stroke(0,255,0);//按2 筆觸綠
  if(key=='3') stroke(0,0,255);//按3 筆觸藍
  if(key=='s') save("output.png");
}
