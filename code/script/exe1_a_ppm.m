%image created by YUQI SHI
%exer1a_ppm (example)
%type following instructions in the command window:

%ppmread function(both binary and ASCII files)

%showing binary files 

Baboon512C_Binary=ppmread('/ppm/Baboon512C_Binary.ppm');
imshow(Baboon512C_Binary);

%showing ASCII files

Baboon512C_ASCII2014=ppmread('/ppm/Baboon512C_ASCII2014.ppm');
Baboon512C_ASCII2014=Baboon512C_ASCII2014./255;
imshow(Baboon512C_ASCII2014);

%ppmwrite function(both binary and ASCII files)

%writing ASCII files(use the matrix read from the original image )
%the output ASCII file is named as outascii.ppm

Baboon512C_ASCII2014=Baboon512C_ASCII2014.*255;
BUPT_ppmwrite(Baboon512C_ASCII2014,512,512,'outascii_baboon.ppm',1);

%writing binary files(use the matrix read from the original image )
%the output binary file is named as outbinary.ppm

BUPT_ppmwrite(Baboon512C_Binary,512,512,'outbinary.ppm',0);