a = imread('cameraman.tif');
a = im2double(a);
[h,w] = size(a);
f = fft2(a,2*h,2*w);
f = fftshift(f);

[m,n] = size(f);
r = 50;
x=0:n-1;
y=0:m-1;
[x,y] = meshgrid(x,y);
cx=0.5*n;
cy=0.5*m;

N=input('Enter filter order: ');
h1 = (sqrt((x-cx).^2+(y-cy).^2)/r).^(2*N);
H1 = 1./(1+h1);

H2=1-H1;
G = H1.* f;
G1= H2.*f;
G=fftshift(G);
G1=fftshift(G1);
g=real(ifft2(G));
g1=real(ifft2(G1));
g=g(1:size(a,1),1:size(a,2));
g1=g1(1:size(a,1),1:size(a,2));
% figure,imshow(log(abs((G))),[]);title('filtered output ');
figure,imshow(g);title('blurred image');
figure,imshow(g1);title('sharpened image');
figure,imshow(H1);
figure,mesh(H1);
