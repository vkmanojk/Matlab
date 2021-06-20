originalBW = imread('text.png');
erodedBW = imerode(originalBW,ones(2,2));
figure, imshow(originalBW);
figure, imshow(erodedBW);