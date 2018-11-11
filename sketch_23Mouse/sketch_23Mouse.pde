
void setup() {
  // 처음에 한번만 실행
  size(640, 640);
  fill(0, 102);
  noStroke();
}

void draw() {
  ellipse(mouseX, mouseY, 8, 8);
}