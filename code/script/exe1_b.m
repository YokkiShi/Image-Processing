%image created by Yuqi
%exer1b (example)
%type following instructions in the command window:



%for binary files(every matrix such as RGB need to be convert to the range between 0-1)
%(lena image in the example)
%(don?t use RGB=RGB./255 instruction in the BUPT_format_converter function)

lena=ppmread('/exe1b/original_lena.ppm');
BUPT_format_converter(lena);


%for ASCII files 
%(use RGB=RGB./255 instruction in BUPT converter)

baboon=ppmread('/exe1b/original_baboon.ppm');
BUPT_format_converter(lena);