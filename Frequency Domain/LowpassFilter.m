a = imread('pout.tif');
a = im2double(a);
f = fft2(a);
lp = fspecial('gaussian',[11,11],1.3);
flp = fft2(lp, size(a,1), size(a,2));
disp(size(flp,1));
disp(size(flp,2));
lout = flp.*f;
out = real(ifft2(lout));
fs = abs(fftshift(flp));
os = abs(fftshift(lout));
subplot(221),imshow(a),title('Original'),
subplot(222),imshow(fs),title('LowPass Filter Spectrum'),axis off
subplot(223),imshow(os),title('Lowpass Spectrum')
subplot(224),imshow(out),title('LowPass Filtered Output')