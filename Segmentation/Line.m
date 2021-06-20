f = imread('rice.png');
r1 = [-1 -1 -1; 2 2 2; -1 -1 -1]; 
r2 = [-1 2 -1; -1 2 -1; -1 2 -1]; 
r3 = [2 -1 -1; -1 2 -1; -1 -1 2]; 
r4 = [-1 -1 2; -1 2 -1; 2 -1 -1]; 
T = 113;
g1 = abs(imfilter(double(f), r1)) >= T; 
g2 = abs(imfilter(double(f), r2)) >= T;
g3 = abs(imfilter(double(f), r3)) >= T;
g4 = abs(imfilter(double(f), r4)) >= T;
g = g1+g2+g3+g4;
figure,imshow(f),title('Orig');
figure,imshow(g1),title('Horizontal');
figure,imshow(g2),title('Vertical');
figure,imshow(g3),title('Diagonal 1');
figure,imshow(g4),title('Diagonal 2');
figure,imshow(g),title(' B&W ');