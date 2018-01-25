%negative images created by Yuqi SHI
function BUPT_negimage(path)
%*****************************************************
% Title: BUPT_negimage
% Input Parameter: path of the file
% Description: To change the ppm or pgm images to their negative color.

%extract the extension of the file to define whether it is pgm or ppm file
[pathstr,name,ext]=fileparts(path);
if(strcmp(ext,'.pgm'))      % compare if these two terms are equal
   [I,w,h,l]=pgmread(path); % l: grey levels
   N=uint8(I);              %transform the image matrix to binary form
   for i=1:h
       for j=1:w
           N(i,j)=l-I(i,j);
       end
   end
   figure,imshow(N);
end


if(strfind(path,'.ppm'))    % compare if there is a string called'.ppm'in path 

   [I,w,h,l]=ppmread(path); % l: grey levels
   N=uint8(I);              %transform the image matrix to binary form
   for i=1:h
       for j=1:w
           for c=1:3
           N(i,j,c)=l-I(i,j,c); % negtive color of the image
           end
       end
   end 
   figure,imshow(N);
end

    