%image created by SHI YUQI
function BUPT_histogram(path)
%*****************************************************
% Title: BUPT_histogram [Exercise 2b]
% Input Parameters:  path: the source file path
% Description: Obtain the histogram of the input image


[I,w,h,level] = pgmread(path);

H=zeros(1,256);% set zero to all points at first 

for k=0:255
     H(k+1)= length(find(I==k));
end

figure,bar(0:255,H), % draw the bar chart