size(640, 640);
line(80, 0, 80, height);
line(160, 0, 160, height);
line(240, 0, 240, height);
line(320, 0, 320, height);
line(400, 0, 400, height);
line(480, 0, 480, height);
line(560, 0, 560, height);
line(640, 0, 640, height);

for(int i=80; i<=640; i=i+80){
    line(i, 0, i, height);
    line(0, i, width, i);
}