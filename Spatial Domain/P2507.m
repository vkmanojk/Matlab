h=fspecial('average',3);
cat = imread('cameraman.tif');
r = imfilter(cat,h);
r1 = imfilter(cat,h,'replicate');
r2 = imfilter(cat,h,'circular');
r3 = imfilter(cat,h,'symmetric');

a = cat-r;
%a = a + cat;


subplot(3,2,1),imshow(cat),title('Original');
subplot(3,2,2),imshow(r),title('Zero Padding');
subplot(3,2,3),imshow(r1),title('Replicate');
subplot(3,2,4),imshow(r2),title('Circular');
subplot(3,2,5),imshow(r3),title('Symmetric');
subplot(3,2,6),imshow(a);