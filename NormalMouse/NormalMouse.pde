
void setup() {
  size(800, 600);
  textSize(16);
  cursor(CROSS);
}

void draw () {
  background(255);

  float x = mouseX;
  float y = mouseY;
  
  // noFill();
  // stroke(0);
  // rect(200, 150, 400, 250);

  translate(mouseX, mouseY);
  fill(0);

  text("x: " + x, 5, 16);
  text("y: " + y, 5, 32);
}
