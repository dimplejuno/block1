void setup() {
  size(640, 640);
  strokeWeight(10);
}

void draw() {
  background(204);

  if (keyPressed) {
    if ((key == 'h') || (key == 'H')) {
      line(160, 320, 480, 320);
    }
    if ((key == 'n') || (key == 'N')) {
      line(160, 160, 480, 480);
    }
  }

  line(160, 160, 160, 480);
  line(480, 160, 480, 480);
}