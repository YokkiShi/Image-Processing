function  BUPT_rect(path,size)
%*****************************************************
% Title:           BUPT_rect
% Input Parameter: path: path of the image
%                  size: the size of the filter
% Description:     This function filter the noise with a rectangular-shaped filter

I=pgmread(path);
T=ones(size,size);
S = 1/sum(sum(T))*T

H=imfilter(I,S,'symmetric');
figure, imshow(H);
end
