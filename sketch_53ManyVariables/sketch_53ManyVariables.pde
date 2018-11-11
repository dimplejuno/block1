float x1 = -10;
float x2 = 10;
float x3 = 35;
float x4 = 18;
float x5 = 30;

void setup() {
  size(640, 640);
  noStroke();
}

void draw() {
  background(0);
  x1 += 0.5;
  x2 += 0.5;
  x3 += 0.5;
  x4 += 0.5;
  x5 += 0.5;
  arc(x1, 80, 20, 20, 0.52, 5.76);
  arc(x2, 160, 20, 20, 0.52, 5.76);
  arc(x3, 240, 20, 20, 0.52, 5.76);
  arc(x4, 320, 20, 20, 0.52, 5.76);
  arc(x5, 400, 20, 20, 0.52, 5.76);
}