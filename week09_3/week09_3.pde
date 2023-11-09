PImage img;
int[][]pos = {{82,455},{93,491},{111,525},{118,457},{128,491},{142,525},{153,456},{161,490},{178,525},{185,455},{198,491},{212,523},{220,457},{230,490},{245,524},{254,457},{265,490},{278,526},{287,456},{297,489},{314,525},{324,456},{331,492},{357,455},{365,490},{389,456}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.jpg");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);
  image(img, 0, 600-266);
  fill(255,0,0,128);
  rect(mouseX, mouseY, 28, 30,5);
  fill(0,255,0,128);
  for(int i=0;i<26;i++){
    rect(pos[i][0], pos[i][1],28,30,5);
  }
}
void mousePressed(){
  println(mouseX, mouseY);
}
