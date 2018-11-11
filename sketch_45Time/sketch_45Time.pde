int tick = 0;
float x = 0;
float y = 0;
void setup() {
  size(640, 640);
  x = width/2;
  y = height/2;
}

void draw() {
  int currentTime = millis();
  background(204);

  if (currentTime > tick) {
    x = random(width);
    y = random(height);
    tick = tick + 1000;
  } 
  
  ellipse(x, y, 90, 90);
}