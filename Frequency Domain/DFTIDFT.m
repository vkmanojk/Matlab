c=imread('cameraman.tif'); 
cf=fft2(c);
g=ifft2(cf); 
g1=uint8((g)); 
figure,imshow(c),title('Original image')
figure,imshow(g1),title('Reconstructed image');