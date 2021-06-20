a = imread('8.jpg');
%b = imbinarize(a);
imtool(a);
pos = [151 149];
m=pos(1);
n=pos(2);
[x,y] = size(a);
c = zeros(x,y);
sum=0.0;
c(m,n)=1;
l = zeros(x,y);
flag = 0;

figure, imshow(c);