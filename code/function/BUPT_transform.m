%image created by Yuqi SHI
function []=BUPT_transform(path,a1,a2,mode)
%*****************************************************
% Title: BUPT_transform [Exercise 3 (b)]
% Input Parameters: 
%             path: is the string format of the path of the input image
%               a1: is the angle of rotating
%               a2: is the angle of skewing
%             mode: 1 means to rotate the image first then skew and 2 means the opposite 
% Description: This function is used to rotate and skew the image you input.


[Origin_Image,w,h,l] = pgmread(path);

[w,h]=size(Origin_Image);

a1=(360-a1)/180*pi;
a2=-(90-a2)/180*pi;

%rT is the transformer to calculate rotation
rT=[ cos(a1)	-sin(a1)     0;
     sin(a1)    cos(a1)      0;
     0          0            1];
%sT is the transformer to calculate skewing
if a2==0
    a=0;
else
    a=-1/tan(a2);
end
sT=[ 1      0       0;
     a      1       0;
     0  	0    	1];
 
K=maketform('affine',sT);
 
if (mode==1)
    rotated=imrotate(Origin_Image,a1);
    final=imtransform(rotated,K);    
end
if (mode==2)
    skewed=imtransform(Origin_Image,K);
    final=imrotate(skewed,a1);
end
imshow(final);
end