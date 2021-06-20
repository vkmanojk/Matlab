a = imread('cameraman.tif');

disp('-------Sharpening------');
h = fspecial('laplacian');
r1 = imfilter(a,h);

h = [1 1 1;0 0 0;-1 -1 -1];
r2 = imfilter(a,h);
h = [1 0 -1;1 0 -1;1 0 -1];
r6 = imfilter(a,h);
r2=r2+r6;

h = [1 2 1;0 0 0;-1 -2 -1];
r3 = imfilter(a,h);
h = [1 0 -1;2 0 -2;1 0 -1];
r4 = imfilter(a,h);
%r3 = r3+r4;
h = [1 0;0 -1];
r4 = imfilter(a,h);
h = [0 1;-1 0];
r5 = imfilter(a,h);
r4=r4+r5;

subplot(221),imshow(r4),title('Roberts');
subplot(222),imshow(r1),title('Laplacian');
subplot(223),imshow(r2),title('Prewitt');
subplot(224),imshow(r3),title('Sobel');