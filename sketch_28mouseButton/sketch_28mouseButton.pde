
void setup() {
  size(640, 640);
  strokeWeight(30);
}

void draw() {
  background(204);
  
  stroke(102);
  line(0, 0, width, height);
  
  if (mousePressed == true) {
      if( mouseButton == LEFT) {
        // 왼쪽 마우스 버튼 
        stroke(255, 0, 0);
      } else {
        // 오른쪽 마우스 버튼
        stroke(255, 255, 255);
      }
    line(width, 0, 0, height);
  }  
}