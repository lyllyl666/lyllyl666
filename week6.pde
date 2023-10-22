import processing.pdf.*;
PImage img;
int lineSpacing = 5; // 线条的间距
void setup() {
  size(1000,1000);
  beginRecord(PDF, "filename.pdf");
  background(255);
  img = loadImage("222.jpg");
  img.resize(width, height);
}
void draw() {
  img.loadPixels();
  for (int y = 0; y < height; y += lineSpacing) {
    for (int x = 0; x < width; x++) {
      int index = x + y * width;
      color pixelColor = img.pixels[index];
      float brightnessVal = brightness(pixelColor);
      // 根据亮度值确定线条的颜色和粗细
      if (brightnessVal < 128) {
        stroke(0);
        strokeWeight(1);
      }
      else if (brightnessVal<200 && brightnessVal>128) {
        stroke(100);
        strokeWeight(0.8);
      } else {
        stroke(255);
        strokeWeight(0.5);
      }

      line(x, y, x, y + lineSpacing);
    }
  }
  updatePixels();
  endRecord();
  noLoop();
}
