
PImage imgSrc;

void setup () {
  size(640, 480);
  
  imgSrc = loadImage("sample.jpg");
}

void draw () {
  background(0);
  displayImage(imgSrc, mousePressed);
}

void displayImage (PImage imgSrc, boolean fit) {
  
  float wImg = imgSrc.width;
  float hImg = imgSrc.height;
  float ratioImg = wImg / hImg;
  
  // Medidas para dibujar en el canvas
  float wX, hX;
  
  // Caso fit
  if (fit) {
    wX = width;
    hX = wX / ratioImg;
  }
  
  // Caso fill
  else {
    hX = height;
    wX = hX * ratioImg;
  }
  
  float x = (width - wX) / 2;
  float y = (height - hX) / 2;
  
  image(imgSrc, x, y, wX, hX);
}
