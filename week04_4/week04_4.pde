void setup(){
  size(800,800);
}
int [][]card = new int[8][11];
color[]c = {#FF5555, #FFAA00, #55AA55, #5555FF};
void draw(){
  background(255);
  for(int i=0; i<8; i++){
    for(int j=0; j<11; j++){
      drawCard(j*32, i*50, c[i%4]);
    }
  }
}
void drawCard(int x, int y, color c){
  stroke(128);///gray stroke
  fill(255);///white
  rect(x, y, 32, 50, 7);
  noStroke();
  fill(c);
  rect(x+2, y+2, 32-5, 50-5, 4);
  
  pushMatrix();
  fill(255);
  translate(x+16, y+25);
  rotate(radians(45));
  ellipse(0, 0, 20, 30);
  popMatrix();
}
