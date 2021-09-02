
float t = 0.0;

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  
  float d = t * 400;
  ellipse(400, 250, d, d);
  
  t += 0.01;
  if (t > 1.0) t = 0.0;
}
