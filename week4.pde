PImage img;
float x;

void lines() {
  //stroke(67,81,90);
  strokeWeight(20);
  for (int x=-500; x<width; x+=30) {
    line(x, 0, x, height);
  }
}

void setup() {
  size(1000,1000);
  img=loadImage("6.jpg");
  image(img, 0, 0);
}

void draw() {
  image(img, 0, 0);
  translate(mouseX, 0);
  lines();
}
