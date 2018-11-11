PImage spritesheet;
PImage sprite;
XML xml;
XML[] children;
int idx = 0;

void setup() {
  size(640, 640);
  spritesheet = loadImage("sheet.png");
  imageMode(CENTER);

  xml = loadXML("sheet.xml");
  children = xml.getChildren("SubTexture");

  for (int i = 0; i < children.length; i++) {
    String name = children[i].getString("name");
    int x = children[i].getInt("x");
    int y = children[i].getInt("y");
    int width = children[i].getInt("width");
    int height = children[i].getInt("height");
    println(name + ", " + x + ", " + y + ", " + width + ", " + height);
  }

  int x = children[idx].getInt("x");
  int y = children[idx].getInt("y");
  int w = children[idx].getInt("width");
  int h = children[idx].getInt("height");

  sprite = spritesheet.get(x, y, w, h);
}

void draw() {
  background(0);
  image(sprite, mouseX, mouseY - 64);
}

void mousePressed() {
  idx++;

  if(idx > children.length-1){
    idx = 0;
  }

  int x = children[idx].getInt("x");
  int y = children[idx].getInt("y");
  int w = children[idx].getInt("width");
  int h = children[idx].getInt("height");

  sprite = spritesheet.get(x, y, w, h);

}