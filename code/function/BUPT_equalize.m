function BUPT_equalize(path)
%*****************************************************
% Title: BUPT_equalize 
% Input Parameters: 
%      path: the source file path
% Description: Histogram equalization

[I,w,h,level] = pgmread(path);

H=zeros(1,256);
temp=zeros(1,256);
E=zeros(1,256);
F=zeros(1,256);

for k=0:255
     H(k+1)= length(find(I==k));% count of each value to draw histogram
end

for i = 1:256
   for j = 1:i
    temp(i)= H(j)+temp(i); 
   end
end

for i=1:256  
   E(i)=round(temp(i)/1024);
end

for i=0:255
    F(i+1)=sum(H(find(E==i))); %find all the non_zero elements in the matrix
end

newI=I;
for i=0:255
    newI(find(I==i))=E(i+1);
end
figure, bar(0:255,F), title('2013212998 Equalized file');
figure, bar(0:255,H), title('2013212998 Source file'); 

pgmwrite(newI,w,h,level,0);
figure, imshow('outbinary.pgm'), title('2013212008 Equalized file');
figure, imshow(path), title('2013212998 Source file')
