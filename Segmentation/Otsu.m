I = imread('coins.png');
counts = imhist(I);
T = otsuthresh(counts);
BW = imbinarize(I,T);
figure, imshow(BW)
figure, imshow(I)