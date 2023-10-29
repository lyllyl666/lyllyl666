boolean red, green;
boolean aaa=true;
int i;
void setup() {
  size(800, 800);
  background(0);
  strokeWeight(10);
  fill(255, 0, 0);
  rect(50, 50, 50, 50);
  fill(0, 255, 255);
  rect(50, 150, 50, 50);
  red=false;
  green=false;
}

void draw() {
  if (red&&mousePressed) {
    stroke(255, 0, 0);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if (green&&mousePressed) {
    stroke(0, 255, 0);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mousePressed() {
 // for (i=0;i<100;i=i+1) {
    if (mouseX>50&&mouseX<100 &&mouseY>50 &&mouseY<100) {
      red=true;
      green=false;
    }
    if (mouseX>50&&mouseX<100 &&mouseY>150 &&mouseY<200) {
      green=true;
      red=false;
    }
 // }
}
