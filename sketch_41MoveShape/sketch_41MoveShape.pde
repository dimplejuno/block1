int radius = 80;
float x = -radius;
float speed = 0.5;

void setup() {
  size(640, 640);
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  x += speed; // Increase the value of x
  arc(x, 320, radius, radius, 0.52, 5.76);
}