import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress remoteAddress;

float min = 330;
float max = 550;

void setup() {
  frameRate(30);

  oscP5 = new OscP5(this, 8338);
  remoteAddress = new NetAddress("127.0.0.1", 12000);
}

void draw() {
  background(255);

  float x = (noise(frameCount * 0.07) * (max - min)) + min;

  OscMessage message = new OscMessage("/data");
  message.add(normValue(x, min, max));

  oscP5.send(message, remoteAddress);
}

float normValue(float value, float min, float max) {
  return 0.0;
}
