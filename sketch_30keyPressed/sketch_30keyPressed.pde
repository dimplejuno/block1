void setup() {
  size(640, 640);
}

void draw() {
  background(204);
  line(0, 0, width, height);
  if (keyPressed) {
    line(width, 0, 0, height);
  }
}