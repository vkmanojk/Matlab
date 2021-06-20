BW1 = imread('circles.png');
figure, imshow(BW1)
BW2 = bwmorph(BW1,'remove');
BW3 = bwmorph(BW1,'skel',Inf);
figure, imshow(BW2)
figure, imshow(BW3)