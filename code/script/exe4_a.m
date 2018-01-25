%image created by YUQI
%exe_4a
%BUPT_noise command

%salt&pepper mode 1 is the default value
BUPT_noise('Lena512_ASCII2014.pgm',2,1);
BUPT_noise('Peppers512_ASCII2014.pgm',2,1);
BUPT_noise('Baboon512_ASCII2014.pgm',2,1);

%gaussian mode
BUPT_noise('Lena512_ASCII2014.pgm',1,1);
BUPT_noise('Lena512_ASCII2014.pgm',1,5);
BUPT_noise('Peppers512_ASCII2014.pgm',1,2);
BUPT_noise('Peppers512_ASCII2014.pgm',1,5);
BUPT_noise('Baboon512_ASCII2014.pgm',1,7);
BUPT_noise('Baboon512_ASCII2014.pgm',1,10);


