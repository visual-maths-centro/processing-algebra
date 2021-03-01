
PImage imgSrc;

void setup () {
  size(640, 480);
  
  imgSrc = loadImage("sample.jpg");
}

void draw () {
  background(0);

  image(imgSrc, 0, 0, width, height);
}
