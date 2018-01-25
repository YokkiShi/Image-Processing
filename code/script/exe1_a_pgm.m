%image created by Yuqi
%exer1a_pgm (example)
%type following instructions in the command window:

%pgmread function(both binary and ASCII files)

%showing binary files 

Peppers512_binary2014=pgmread('/pgm/Original_Peppers_binary.pgm');
imshow(Peppers512_binary2014);

%showing ASCII files

Peppers512_ASCII2014=pgmread('/pgm/Original_Peppers_ASCII.pgm');
Peppers512_ASCII2014=Peppers512_ASCII2014./255;
imshow(Peppers512_ASCII2014);

%pgmwrite function(both binary and ASCII files)

%writing ASCII files(use the matrix read from the original image )
%the output ASCII file is named as outascii.pgm

Peppers512_ASCII2014=Peppers512_ASCII2014.*255;
pgmwrite(Peppers512_ASCII2014,512,512,256,1);

%writing binary files(use the matrix read from the original image )
%the output binary file is named as outbinary.pgm

pgmwrite(Peppers512_binary2014,512,512,256,0);