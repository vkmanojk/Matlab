a = imread('cameraman.tif');
[x,y] = size(a);
a = im2double(a);
f = fft2(a);

u = 0:x-1;
v = 0:y-1;

i = find(u>x/2);
u(i) = u(i) - x;

j = find(v>y/2);
v(j) = v(j) - y;

[m,n] = meshgrid(u,v);
d = sqrt(m.^2+n.^2);
disp('IDEAL LOWPASS FILTER DOMAIN');

d0 = input('Enter cutoff radius: ');

h = double(d<d0);

g = h.*f;
gi = real(ifft2(g));
ff = abs(fftshift(h));

subplot(221),imshow(a),title('original image')
subplot(222),imshow(ff),title('IDEAL LPF Image')
subplot(223),imshow(gi),title('IDEAL LPF Filtered Image')
subplot(224),mesh(ff),grid off,axis off