%image created by Yuqi SHI
function BUPT_log(path,v,k,a)

%  'IMAGE' is the input one you wanted to LoG
%  'v' is veriance of Gaussian filter
%  'k' is the kernal size
%  'a' is the coefficient for the Laplcian filters mask
%  k=5 for normal use, k= 2 or 7 when it is  needed in the QUESTIONS


[I,w,h,l]= pgmread(path);
    
HSIZE=[k k];   %siz

%Gaussian filter
siz = (HSIZE-1)/2;

%sgm=sigma
sgm = v^2;
[x y] = meshgrid(-siz(2):siz(2),-siz(1):siz(1));

%the arument of the e in Gaussian formula
arg= -(x.*x + y.*y)/(2*sgm);
E = exp(arg);

%Eps (a) is the distance between | a | and the smallest floating point number greater than | a |
E(E<eps*max(E(:))) = 0;

sumh = sum(E(:));
if sumh ~= 0,
    E  = E/sumh;
end;

%calculate the Laplacian

lapT=1/(1-a)*[a 1-a a;1-a -4 1-a;a 1-a a];
output=imfilter(I,E);
output=imfilter(output,lapT);
imshow(output);
