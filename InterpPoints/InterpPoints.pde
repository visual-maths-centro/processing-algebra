
float xA = 250;
float yA = 100;

float xB = 600;
float yB = 450;

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  
  fill(255);
  noStroke();
  ellipse(xA, yA, 8, 8);
  ellipse(xB, yB, 8, 8);
  
  stroke(255);
  line(xA, yA, xB, yB);
  
  float amt = 0.5;
  // float x = ?;
  // float y = ?;
}
