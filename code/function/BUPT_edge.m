function BUPT_edge(path,mode)

%*****************************************************
% Title:            BUPT_edge
% Input Parameter:  path:path of the image
%                   mode: 1 for Sobel; 2 for Roberts; 3 for Prewitt
% Description:      This function applies a separate filtering of each of the three RGB components.
% image created by YUQI


I=imread(path);

    if mode==1 
        Sx=[ 1 0 -1; 2 0 -2; 1 0 -1];
        Sy=[ 1 2 1; 0 0 0; -1 -2 -1];
    end
    if mode==2
        Sx=[ 1 0 0; 0 -1 0 ; 0 0 0];
        Sy=[ 0 1 0; -1 0 0; 0 0 0];
    end
    if mode==3
        Sx=[ 1 -1 1; 1 -1 0; 1 -1 -1];
        Sy=[ 1 1 1; 0 0 0; -1 -1 -1];
    end

Hx=double(imfilter(I,Sx,'replicate'));
Hy=double(imfilter(I,Sy,'replicate'));
H=((Hx.*Hx)+(Hy.*Hy)).^0.5;
H=uint8(H);
figure, imshow(H);
end
