
// Declaramos de arreglo:
// tipo[] nombreArreglo;

// Inicializarlo
// tipo[] nombreArreglo = new tipo[30];

// Poniendo los valores iniciales
// tipo[] nombreArreglo = { v_0, v_1, v_2, ..., v_n-1 };
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

  float min = values[0];
  for (int i = 0; i < values.length; i++) {
    float v = values[i];
    if (v < min) {
      min = v;
    }
  }

  return min;
}

float getMax (float[] values) {

  float max = values[0];
  for (int i = 0; i < values.length; i++) {
    float v = values[i];
    if (v > max) {
      max = v;
    }
  }

  return max;
}

float myNorm (float value, float min, float max) {
  return (value - min) / (max - min);
}
