
void setup() {
  size(640, 640);
  strokeWeight(30);
}

void draw() {
  background(204);
  
  stroke(102);
  line(0, 0, width, height);
  
  if (mousePressed == true) {
    stroke(255, 0, 0);
  }
  line(width, 0, 0, height);
}