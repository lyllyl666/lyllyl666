PFont myFont;
void setup() {
  size(800, 800);
  background(255, 255, 255);
  // String[] fontList = PFont. list();
  // println(fontList);
  myFont = createFont("Times- Roman", 48);
  textFont(myFont, 272);
  translate(400, 400);
  for (int i=0; i<30; i=i+1) {
    fill(0, 0, 0, 2*i);
    textAlign(RIGHT);
    pushMatrix();
   // translate(400-i,400-i);
    //rotate(-PI*i/500);
    text("F LY",200+i*3,200+i*3);
    //translate(400+i*5,400+i*5);
    popMatrix();
  }
}
