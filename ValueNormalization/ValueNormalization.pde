float[] values = {
  100, 30, 200, 122, 80, 10, 15, 132
};

float min, max;

void setup () {
  size(640, 480);

  min = getMin(values);
  max = getMax(values);
}

void draw () {
  background(255);
  drawLinearGraph();
}

void drawLinearGraph() {

  float spacingX = width / float(values.length - 1);

  beginShape();
  for (int i = 0; i < values.length; i++) {
    float v = values[i]; // Valor actual
    float vNorm = myNorm(v, min, max); // Valor actual normalizado

    float x = i * spacingX;
    float y = height - (height * vNorm);
    vertex(x, y);
    ellipse(x, y, 12, 12);
  }
  noFill();
  endShape();
}

float getMin (float[] values) {
  return 0;
}

float getMax (float[] values) {
  return 0;
}

float myNorm (float value, float min, float max) {
  return 0;
}
