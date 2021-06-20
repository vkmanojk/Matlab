a = imread('pout.tif');
b = imread('rice.png');
c = bitor(a,b);
imshow(c);