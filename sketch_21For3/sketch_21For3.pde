int s = 80;
size(640, 640);

for(int i=0; i<width/s; i++){
    for(int j=0; j<height/s; j++){
        rect(i*s, j*s, s, s);
    }
}