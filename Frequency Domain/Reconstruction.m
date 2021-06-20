a = imread('pout.tif');
a = im2double(a);
f = fft2(a);
m = abs(f);
p = exp(1i * angle(f));

fs = (fftshift(ifft2(m)));
l = 1+log(fs);
fm = max(l(:));
imshow((ifft2(p)),[]);