a = imread('pout.tif');
a = im2double(a);
f = fft2(a);
m = abs(f);
p = exp(1i*angle(f));

g = m.*p;
g = ifft2(g);

m = abs(fftshift(ifft2(m)));
p=ifft2(p);

figure,imshow(a),title('Original');
figure,imshow(m),title('Magnitude');
figure,imshow(p,[]),title('Phase');
figure,imshow(g),title('Reconstructed Image');