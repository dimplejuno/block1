int radius = 80;
float x = 110;
float speed = 1.5;
int direction = 1;

void setup() {
  size(640, 640);
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  x += speed * direction;
  if ((x > width-radius) || (x < radius)) {
    direction = -direction; // Flip direction
  }
  if (direction == 1) {
    arc(x, 320, radius, radius, 0.52, 5.76); // Face right
  } else {
    arc(x, 320, radius, radius, 3.67, 8.9); // Face left
  }
}