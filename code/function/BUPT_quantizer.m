function BUPT_quantizer(path, n)
%*****************************************************
% Title: BUPT_quantizer
% Input Parameters: 
%             path: the source file path which will be converted
%                n: quantization level
% Description: This funtion is able to quantizes grey level images
%written by YUQI

[I,w,h,level] = pgmread(path);

for i = 1:h
    for j = 1:w
        J(i,j)=floor(I(i,j)*n/level);
    end
end

pgmwrite(J,w,h,n-1,1);
figure,imshow('outascii.pgm')
