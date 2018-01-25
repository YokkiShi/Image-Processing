function BUPT_noise(path,mode,value)
%*****************************************************
% Title:  BUPT_noise
%image created by YUQI
% Input Parameter: 
% path:path of the pgm image  
% mode:salt and pepper noise or gaussian noise
% 1 represents salt and pepper noise; 2 represents gaussian noise
% Description: This function adds different types of moise and caculates the value of mse and psnr  
 
I=pgmread(path);
pgmsize=size(I);
 
if mode == 1
    J=imnoise(I,'gaussian',0,value/100);
end
if mode==2
    J=imnoise(I,'salt & pepper',value/100);
end
  Z=abs(J-I);

S=Z.*Z;
 MSE=sum(sum(S))/(pgmsize(1)*pgmsize(2));
 PSNR=20*log10(255/(MSE^0.5));

figure, imshow(J);
title(strcat('MSE=',num2str(MSE),'  PSNR=',num2str(PSNR))); 
end
