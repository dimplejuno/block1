// width 라는 변수는 시스템에서 만들어 줌 항상 화면의 넓이값을 갖음.
// height 는 화면의 높이 값을 갖음. 
// size()를 실행한 후에 width, height는 사용 가능. 
size(640, 640);

line(0, 0, width, height); 
line(width, 0, 0, height); 
ellipse(width/2, height/2, 160, 160);
