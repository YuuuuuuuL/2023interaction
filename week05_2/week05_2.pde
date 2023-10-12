void setup(){
  size(400, 400, P3D);
}
void draw(){
  background(#FFFFF2);
  pushMatrix();
    translate(mouseX, mouseY);
    rotateY(radians(mouseX));
    fill(0,255,0);//綠色
    box(100);
    
    
    noFill();
    scale(2);//放大2倍
    box(100);
  popMatrix();
}
