a = imread('cameraman.tif'); 

disp('-------Smoothing------');
h = fspecial('average',[3,3]);
r1 = imfilter(a,h);
h = fspecial('motion');
r2 = imfilter(a,h);
h = fspecial('gaussian',[3,3],2.3);
r3 = imfilter(a,h);
figure,imshow(a),title('Original');
figure,imshow(r1),title('Average');
figure,imshow(r2),title('Motion');
figure,imshow(r3),title('Gaussian');

