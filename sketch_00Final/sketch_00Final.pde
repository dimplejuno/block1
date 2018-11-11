// 블록 1 기초 프로젝트 

// 정수 변수 
int blocksize = 20; // 480 / 80 = 8

// 클래스와 객체 
Snake snake;
// 클래스 
PVector food;

void setup() {
  size(640, 640);
  snake = new Snake();
  frameRate(10);
  pickLocation();
}

// 먹이를 랜덤한곳에 놓아줌. 함수 
void pickLocation() {
  // 기본 블록의 크기로 나눔. 
  int cols = width/blocksize;
  int rows = height/blocksize;

  // 랜덤한 숫자를 얻어...벡터를 만들고 블록의 크기를 곱해줌. 
  food = new PVector(floor(random(cols)), floor(random(rows)));
  food.mult(blocksize);
}

void draw() {
  // 배경으로 지우기.
  background(51);

  // 먹이를 먹었으면 새로운 먹이를 놓아준다. 
  if (snake.eat(food)) {
    pickLocation();
  }

  // 죽었는지 체크
  snake.death();

  // 위치 업데이트 
  snake.update();

  // 보이기 
  snake.show();

  // 먹이가 있는 블록은 다른 색으로 칠한다. 
  fill(255, 0, 100);
  rect(food.x, food.y, blocksize, blocksize);
}

// 마우스를 클릭하면 뱀의 숫자가 늘어남. 
void mousePressed() {
  snake.total++;
}

void keyPressed() {
  if (keyCode == UP) {
    snake.dir(0, -1);
  } else if (keyCode == DOWN) {
    snake.dir(0, 1);
  } else if (keyCode == RIGHT) {
    snake.dir(1, 0);
  } else if (keyCode == LEFT) {
    snake.dir(-1, 0);
  }
}
