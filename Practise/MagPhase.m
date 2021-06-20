a = imread('pout.tif');
a = im2double(a);
f = fft2(a);
f = fftshift(f);
m = abs(f);
p = exp(1i*angle(f));
fs = 0.5*log(1+m);
fm = max(fs(:));
g=p.*m;
g = ifft2(g);
p = ifft2(p);
m = abs(fftshift(ifft2(m)));
imshow(fs/fm);

