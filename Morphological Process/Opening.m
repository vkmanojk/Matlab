originalBW = imread('text.png');
erodedBW = imerode(originalBW,ones(2,2));
openedBW = imdilate(erodedBW,ones(2,2));
figure, imshow(originalBW);
figure, imshow(erodedBW);
figure, imshow(openedBW);