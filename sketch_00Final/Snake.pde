// Snake 클래스

class Snake {
  // 좌표 
  float x = 0;
  float y = 0;

  // 스피드 
  float xspeed = 1;
  float yspeed = 0;

  // 꼬리의 갯수 
  int total = 0;

  // 꼬리의 리스트 (벡터의 리스트, 즉 각 꼬리의 위치 정보)
  ArrayList<PVector> tail = new ArrayList<PVector>();

  PImage headImage;

  // 생성자 
  Snake() {
  }

  // 먹기 즉, 먹이의 위치 정보를 처리함. 먹었는지 알려줌.(리턴)
  boolean eat(PVector foodPosition) {
    float d = dist(x, y, foodPosition.x, foodPosition.y);
    if (d < 1) {
      // 꼬리의 갯수를 하나 증가시켜줌. 즉 먹이와  머리가 겹침. (같은 위치)
      total++;
      return true;
    } else {
      return false;
    }
  }

  // 움직이는 방향 벡터 
  void dir(float x, float y) {
    xspeed = x;
    yspeed = y;

    
  }
  
  // 죽었는지 체크 
  void death() {
    // 전체 꼬리의 갯수만큼 반복함.
    for (int i = 0; i < tail.size(); i++) {
      // 꼬리를 읽어옴(반복적으로 순차적으로 수행함)
      PVector pos = tail.get(i);
      // 머리의 좌표와의 거리를 계산함. 머리와 꼬리가 같은곳에 있으면 죽은것임.(거리는 0)
      float d = dist(x, y, pos.x, pos.y);

      if (d <  1) {
        println("starting over");
        // 다시 처음으로 
        total = 0;
        tail.clear();
      }
    }
  }

   
  void update() {
    //println(total + " " + tail.size());
    if (total > 0) {
      // 꼬리가 있음. 또는 먹이를 먹었음. 
      if (total == tail.size() && !tail.isEmpty()) {
        // 꼬리의 갯수가 현재 갯수와 같음. 즉, 새로 추가 하는것은 아니고 
        // 마지막 꼬리를 제거하고 머리쪽에 새로운꼬리를 추가함. 
        tail.remove(0);
      }

      // 꼬리를 현재 머리의 위치에 추가함. 위에서 제거하지 않고 내려오면 그대로 추가함.  
      tail.add(new PVector(x, y));
    }

    // 머리의 위치...좌표 이동 
    x = x + xspeed*blocksize;
    y = y + yspeed*blocksize;

    x = constrain(x, 0, width-blocksize);
    y = constrain(y, 0, height-blocksize);
  }

  // 뱀을 화면에 나타냄. 
  void show() {
    fill(255);

    // 꼬리의 각 위치를 표시함. 
    for (PVector v : tail) {
      rect(v.x, v.y, blocksize, blocksize);
    }

    // 머리를 그림. 
    fill(255, 255, 255);
    ellipse(x+blocksize/2, y+blocksize/2, blocksize, blocksize);
  }
}
