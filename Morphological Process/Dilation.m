originalBW = imread('text.png');
dilatedBW = imdilate(originalBW,ones(3,3));
figure, imshow(originalBW);
figure, imshow(dilatedBW);