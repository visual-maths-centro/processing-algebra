
PVector ballPos = new PVector(0.5, 0.5);
PVector ballSpeed = new PVector(0.008, 0.004);

// PVector rectPos = new PVector(0.3, 0.1);
// PVector rectSpeed = new PVector(0.007, -0.003);

void setup() {
  size(600, 600);
  stroke(0);
}

void draw() {
  background(255);

  float x = ballPos.x;
  float y = ballPos.y;
  fill(0);
  ellipse(x, y, 12, 12);

  ballPos.add(ballSpeed);
  if (ballPos.x > 1.0 || ballPos.x < 0.0) ballSpeed.x *= -1.0;
  if (ballPos.y > 1.0 || ballPos.y < 0.0) ballSpeed.y *= -1.0;
}
