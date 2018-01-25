%image created by Yuqi

%rotation
original=pgmread('SHIYUQI.pgm');
rotate_30=imrotate(original,330);
imshow(rotate_30);
rotate_60=imrotate(original,300);
imshow(rotate_60);
rotate_120=imrotate(original,240);
imshow(rotate_120);
invrotate_50=imrotate(original,50);
imshow(invrotate_50);

%skewing
skewing(original,10);
skewing(original,40);
skewing(original,60);

%skewing and rotation
a1=imrotate(original,340);
a2=skewing(a1,50);
b1=skewing(original,50);
b2=imrotate(bi,340);
imshow(b2);
