PImage img;

void setup() {
  size(640, 640);
  img = loadImage("playerShip1_blue.png");
  imageMode(CENTER);
}

void draw() {
  background(0);
  image(img, mouseX, mouseY);
}