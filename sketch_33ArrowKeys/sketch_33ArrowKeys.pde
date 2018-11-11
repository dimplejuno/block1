int x;

void setup() {
  size(640, 640);
  x = width/2;
}

void draw() {
  background(128);

  if (keyPressed && (key == CODED)) { // If it's a coded key
    if (keyCode == LEFT) { // If it's the left arrow
      x--;
    } else if (keyCode == RIGHT) { // If it's the right arrow
      x++;
    }
  }
  ellipse(x, 320, 160, 160);
}