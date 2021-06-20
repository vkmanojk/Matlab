I = imread('printedtext.png');
T = adaptthresh(I,0.4,'ForegroundPolarity','dark');
figure, imshow(T)
figure, imshow(I)
BW = imbinarize(I,T);
figure, imshow(BW);