PImage img;
int x=0, y=0;

void setup() {
  size(1000, 1000);
  background(255);
  img = loadImage("444.jpg");
}

void draw() {
  x=int (random(img.width));
  y= int (random(img.height));
  int loc=x+y*img.width;
  float bri=brightness(img.pixels[loc]);

  if (bri<100) {
    line(x, y, x, y+50);
    line(x+5, y, x+5, y+50);
    line(x+10, y, x+10, y+50);
    line(x+15, y, x+15, y+50);
    line(x+20, y, x+20, y+50);
    line(x+25, y, x+25, y+50);
    line(x+30, y, x+30, y+50);
    line(x+35, y, x+35, y+50);
    line(x+40, y, x+40, y+50);
    line(x+45, y, x+45, y+50);
    line(x+50, y, x+50, y+50);
  } else if (bri>100&&bri<200) {
    line(x, y, x+50, y);
    line(x, y+10, x+50, y+10);
    line(x, y+20, x+50, y+20);
    line(x, y+30, x+50, y+30);
    line(x, y+40, x+50, y+40);
    line(x, y+50, x+50, y+50);
  } else if (bri>200 && bri<230) {
    ellipse(x, y, 30, 30);
  } else {
    fill(255);
    ellipse(x, y, 60, 60);
  }
}
