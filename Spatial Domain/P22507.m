im = imread('cameraman.tif');
n = imnoise(im,'salt & pepper');
g = ordfilt2(n,5,ones(3,3));
g1 = ordfilt2(n,1,ones(3,3));
g2 = ordfilt2(n,9,ones(3,3));

a = im-g1;


subplot(3,2,1),imshow(im),title('Original');
subplot(3,2,2),imshow(g),title('Median');
subplot(3,2,3),imshow(g1),title('Min');
subplot(3,2,4),imshow(g2),title('Max');
subplot(3,2,5),imshow(n),title('Noise');
subplot(3,2,6),imshow(a);