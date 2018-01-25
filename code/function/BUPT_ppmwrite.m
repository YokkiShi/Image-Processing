function ppmwrite(I,w,h,fname,mode)
%*****************************************************
% Title:  ppmwrite
% Input Parameters: 
%                I: The Matrix which is used to write in ppm
%            (w,h): Dimension of the matrix
%            fname: The ppm file that recovered from the Matrix
%             mode: ASCII or Binary (1 for Ascii and 0 for Binary)
% Description: image created by Yuqi Shi.


% open the file in read mode
[h,w,c]=size(I);
assert(c==3);

if (mode == 1) ; % Ascii flag
    f= fopen(fname,'w');
    fprintf(f,'P3\n');
    fprintf(f,'#outascii.ppm\n');
    fprintf(f,'\n# image width\n');
    fprintf(f,'%i',w);
    fprintf(f,'\n# image height\n');
    fprintf(f,'%i',h);   
    fprintf(f,'\n');
    
    R= I(:,:,1)';
    G= I(:,:,2)';
    B= I(:,:,3)';
    %Concatenate arrays along 2 dimensions
    im1 = cat(2, R(:), G(:),B(:));
    %Write matrix to ASCII-delimited file
    %If do not specify '-append', dlmwrite overwrites any existing data in the file.
    % Delimiter string to be used in separating matrix elements
    dlmwrite(fname, int32(im1), '-append', 'delimiter', '\n');

else
    f= fopen(fname,'w');
    fprintf(f,'P6\n');
    fprintf(f,'#outbinary.ppm\n');
    fprintf(f,'\n# image width\n');
    fprintf(f,'%i',w);
    fprintf(f,'\n# image height\n');
    fprintf(f,'%i',h);
    fprintf(f,'\n');

    for i=1:w
      for j=1:h
        fwrite(f,I(i,j,1),'uint8');
        fwrite(f,I(i,j,2),'uint8');
        fwrite(f,I(i,j,3),'uint8');
       end
    end
    fclose(f);

end
