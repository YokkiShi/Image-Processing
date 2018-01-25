function BUPT_histogram_modelling
%*****************************************************
% Title: BUPT_histogram_modelling [Exercise 2 (d)]
% Description: Histogram modelling
% written by YUQI

img_a=pgmread('Lena512_Binary2014.pgm');
hista=imhist(img_a);
[w h]=size(img_a);
pi=hista/(w*h);

G=[];  
for i=1:256
    G=[G sum(pi(1:i))];
end

img=pgmread('Peppers512_binary2014.pgm');
[m n]=size(img);
histb=imhist(img);
pt=histb/(m*n);

s=[];    
for i=1:256
    s=[s sum(pt(1:i))];
end

for i=1:256
    tmp{i}=G-s(i);
    tmp{i}=abs(tmp{i}); 
    [a index(i)]=min(tmp{i});
end

imgn=zeros(m,n);
for i=1:m
   for j=1:n
      imgn(i,j)=index(img(i,j)+1)-1;  
   end
end

imgn=uint8(imgn);
figure, imshow('Lena512_Binary2014.pgm');title('imageA');
figure, imshow('Peppers512_binary2014.pgm');title('imageB');
figure, imshow(imgn); title('new');
figure, bar(imhist(img_a));title('HistoA');
figure, bar(imhist(img));title('HistoB');
figure, bar(imhist(imgn)); title('new histogram');
    
for i=-255:0
    e(i+256)=1.5^(i/16);
end;

G=[];  
for i=1:256
    G=[G e(i)];
end

img=ppmread('Peppers512_binary2014.pgm');
[m n]=size(img);
histb=imhist(img);
pt=histb/(m*n);

s=[];    
for i=1:256
    s=[s sum(pt(1:i))];
end

for i=1:256
    tmp{i}=G-s(i);
    tmp{i}=abs(tmp{i});
    [a index(i)]=min(tmp{i});
end

imgn=zeros(m,n);
for i=1:m
   for j=1:n
      imgn(i,j)=index(img(i,j)+1)-1;
   end
end

imgn=uint8(imgn);

figure, imshow(img);
figure, bar(imhist(img));
figure, imshow(imgn); 
figure, bar(imhist(imgn)); 
