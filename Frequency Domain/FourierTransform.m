clear all;
a = imread('pout.tif');
a = im2double(a);
f = fft2(a);
fs = fftshift(f);
i2 = ifft2(f);
i1 = 0.5*log(1+fs);
subplot(1,3,1),imshow(a),title('Original');
subplot(1,3,2),imshow(i1),title('Fourier Spectrum');
subplot(1,3,3),imshow(i2),title('Reconstructed');