int s = 80;
size(640, 640);

for(int i=0; i<width/s; i++){
    line(i*s, 0, i*s, height);
    line(0, i*s, width, i*s);
}