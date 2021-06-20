a = imread('cameraman.tif');
b = imadjust(a,[0 1],[1 0]);
c = imadjust(a,[0 1],[0.5 1]);
d = imadjust(a,[0.6 1],[0 1]);
subplot(2,2,1),imshow(a);
subplot(2,2,2),imshow(b);
subplot(2,2,3),imshow(c);
subplot(2,2,4),imshow(d);
