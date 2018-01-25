function BUPT_lowpass(path,size,sigma)
%*****************************************************
% Title:  BUPT_lowpass
% Input Parameter: 
% path:path of the image  
% size: the sice of the filter
% sigma: the standard difference
% Description: This function convolves an image with a Gaussian kernel.

I=pgmread(path);

S=imnoise(I,'gaussian',0,0.07);
gausfilter=fspecial('gaussian',size,sigma);
blur=imfilter(S,gausfilter,'replicate');
figure,imshow(blur);
