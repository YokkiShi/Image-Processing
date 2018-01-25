function BUPT_up(path,factor,mode)
%*****************************************************
% Title:  BUPT_up
% Input Parameters: 
%                path:   path of the image
%                factor: the times of upsampling scale
%                mode:   the type of filter
%                        1 is for nearest way;2 is for bilinear way
%
% Description: This file is used to scale the image by using the nearest  
%              neighbour as well as the bilinear interpolation.

I=ppmread(path);
if mode==1
    S=imresize(I,factor,'nearest');
    figure,imshow(S);title('nearest');
end
if mode==2
    S=imresize(I,factor,'bilinear');
    figure,imshow(S);title('bilinear');
end 
end
