a = imread('cameraman.tif');
b = imnoise(a,'salt & pepper');
r1 = ordfilt2(b,5,ones(3,3));
r2 = ordfilt2(a,13,ones(5,5));
%b =imnoise(a,'gaussian');
r3 = ordfilt2(b,1,ones(3,3));
r4 = ordfilt2(b,9,ones(3,3));

subplot(221),imshow(r4),title('Max');
subplot(222),imshow(r1),title('Median');
subplot(223),imshow(r2),title('----');
subplot(224),imshow(r3),title('Min');
