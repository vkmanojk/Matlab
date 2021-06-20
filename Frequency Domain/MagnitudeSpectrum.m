clear all;
c=imread('pout.tif');
c = im2double(c);
cf=(fft2(c));
cf1=fftshift(cf);
fl = log(1+abs(cf1));
fm = max(fl(:));
figure,imshow((fl/fm))
fa=abs(cf1);
fm=max(fa(:));
figure,imshow(fa/fm);