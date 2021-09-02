import oscP5.*;
import netP5.*;

OscP5 oscP5;
float[] values = new float[75];

void setup() {
  size(850, 500);
  oscP5 = new OscP5(this, 12000);
}

void draw() {
  background(0);
  
  float xStep = width / float(values.length);
  
  beginShape();
  for (int i = 0; i < values.length; i++) {
    float x = i * xStep;
    float y = height - (values[i] * height);
    
    fill(255);
    noStroke();

    ellipse(x, y, 6, 6);
    vertex(x, y);
  }
  stroke(255);
  noFill();
  endShape();
}

void oscEvent(OscMessage message) {
  if (!message.addrPattern().equals("/data")) {
    return;
  }
  
  float value = message.get(0).floatValue();
  for (int i = 0; i < values.length - 1; i++) {
    values[i] = values[i + 1];
  }
  
  values[values.length - 1] = value;
}
