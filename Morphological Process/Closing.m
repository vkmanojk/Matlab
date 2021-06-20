originalBW = imread('text.png');
dilatedBW = imdilate(originalBW,ones(3,3));
closedBW = imerode(dilatedBW,ones(3,3));
figure, imshow(originalBW);
figure, imshow(dilatedBW);
figure, imshow(closedBW);
