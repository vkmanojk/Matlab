n=imread('rice.png');
n=imbinarize(n);
im=n&~imerode(n,ones(3,3));
figure,imshow(n);
figure,imshow(im);