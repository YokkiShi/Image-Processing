% wirtten by YUQI

function [L]=skewing(I,angle)
angle=-(90-angle)/180*pi;
skew=1/tan(angle);
F=[1 0 0;skew 1 0;0 0 1];
K=maketform(affine,F);
L=imtransform(I,K);
imshow(L)

