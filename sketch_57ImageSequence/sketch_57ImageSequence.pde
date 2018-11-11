int numFrames = 9; // The number of frames
PImage[] images = new PImage[numFrames]; // Make the array
int currentFrame = 0;

float x,y;

void setup() {
  size(640, 640);
  imageMode(CENTER);
  for (int i = 0; i < images.length; i++) {
    String imageName = "groundExplosion" + nf(i, 2) + ".png";
    images[i] = loadImage(imageName); // Load each image
  }
  frameRate(9);
}

void draw() {
  background(0);
  if(frameCount%9 == 0) {
      x = random(width);
      y = random(height);
  }
  image(images[currentFrame], x, y);
  currentFrame++; // Next frame
  if (currentFrame >= images.length) {
    currentFrame = 0; // Return to first frame
  }
}