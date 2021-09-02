
float x = 250;
float y = 200;

void setup() {
  size(850, 850);
}

void draw() {
  background(255);

  fill(255, 0, 0);
  noStroke();
  ellipse(x, y, 12, 12);
  ellipse(mouseX, mouseY, 12, 12);

  stroke(0);
  dashedLine(x, y, mouseX, mouseY, 0.01);
}

void dashedLine(float xA, float yA, float xB, float yB, float amtSeparation) {
}
