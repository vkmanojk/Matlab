f = imread('rice.png');
w = [-1 -1 -1; -1 8 -1; -1 -1 -1]; 
T = 113;
g = abs(imfilter(double(f), w)) >= T; 
figure,imshow(f);
figure,imshow(g);