function jpg2pgm(inputImage)  
  
% written by SHI YUQI  
  
  img=imread(inputImage);% the input jpg file to be converted to pgm form  
  outputImage='SHIYUQI.pgm';%output file name 
  imwrite(img,outputImage,'pgm');