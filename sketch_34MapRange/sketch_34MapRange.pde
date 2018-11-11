void setup() {
  size(640, 640);
  strokeWeight(12);
}

void draw() {
  background(204);

  stroke(102);
  ellipse(mouseX, 320, 160, 160); // Gray line

  stroke(0);
  float mx = mouseX/2;
  ellipse(320, mx, 80, 80); // Black line
}