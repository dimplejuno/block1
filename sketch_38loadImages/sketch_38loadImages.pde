PImage img1;
PImage img2;
PImage img3;

void setup() {
  size(640, 640);
  img1 = loadImage("playerShip1_blue.png");
  img2 = loadImage("playerShip2_green.png");
  img3 = loadImage("playerShip3_red.png");
  imageMode(CENTER);
}

void draw() {
  background(0);
  image(img1, width/4, height/2);
  image(img2, width/2, height/2);
  image(img3, width*3/4, height/2);
}