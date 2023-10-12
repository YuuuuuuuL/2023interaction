ArrayList<PVector>pt;
void setup(){
  size(400,400,P3D);
  pt = new ArrayList<PVector>();
  for(int i = 0; i<37; i++){
    pt.add(new PVector(random(400), random(400)) );
  }
}
void draw(){
  background(255);
  for(PVector p:pt){
    ellipse(p.x,p.y,10,10);
  }
  if(ans!=null) ellipse(ans.x, ans.y, 15, 15);
}
PVector ans = null;
void mouseDragged(){
  if(mouseButton==CENTER && ans!=null){
    ans.x = mouseX;
    ans.y = mouseY;
  }
}
void mousePressed(){
  if(mouseButton==LEFT) pt.add(new PVector(mouseX, mouseY));
  else if(mouseButton==CENTER){
    for(PVector p:pt){
      if(dist(p.x, p.y, mouseX, mouseY)<5){
        ans=p;
      }
    }
  }
  else if(mouseButton == RIGHT){//右鍵，要刪掉 用傳統for迴圈
    for(int i=0; i<pt.size(); i++){//要寫兩行才等於厲害的1行
      PVector p = pt.get(i);
      if(dist(p.x, p.y, mouseX, mouseY)<5){//找到夠近的點
        pt.remove(i);//把第i個點刪掉，會把大資料結構右邊的都左移一格
      }
    }
  }
}
