void setup() {
  size(640, 640);
  strokeWeight(12);
}

void draw() {
  background(204);

  stroke(102);
  ellipse(mouseX, 320, 160, 160); 

  stroke(0);
  float mx = map(mouseX, 0, width, height/2, height);
  ellipse(320, mx, 80, 80); 
}