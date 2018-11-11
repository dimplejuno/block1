
void setup() {
  // 처음에 한번만 실행
  size(640, 640);
  strokeWeight(8);
  stroke(0, 64);
}

void draw() {
  float weight = dist(mouseX, mouseY, pmouseX,  pmouseY);
  strokeWeight(weight);
  line(mouseX, mouseY, pmouseX, pmouseY);
}