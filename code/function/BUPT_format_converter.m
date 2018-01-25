
function BUPT_format_converter(I)
%*****************************************************
% Title: BUPT_format_converter
% Input Parameter: matrix to be converted
% Description: This file reads matrix
% only ASCII files need to normalize the image before imshow()
% written by YUQI

 R=I(:,:,1);
 G=I(:,:,2);
 B=I(:,:,3);
 Y=0.257*R+0.504*G+0.098*B+16;
 %Y=Y./255;
 %imshow(Y);
 U=-0.148*R-0.291*G+0.439*B+128;
 %U=U./255;
 %imshow(U);
 V=0.439 * R-0.368 * G-0.071 * B+128;
 %V=V./255;
 %imshow(V);
 YUV=cat(3,Y,U,V);
 %YUV=YUV./255;
 %imshow(YUV);
 R=1.164*(Y-16)+2.018*(U-128); %red
 G=1.164*(Y-16)-0.813*(V-128)-0.391*(U-128);  %green
 B = 1.164*(Y-16) + 1.596 *(V-128); %blue
 RGB = cat(3,R,G,B);
 RGB=RGB./255;
 imshow(RGB);
 
 
