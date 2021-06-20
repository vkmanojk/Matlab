a = imread('F:\AU\Third Year\5th Sem\DIP\Lab\Lab1\Fig0.tif');
c= 1;
g = .62;
d = c * power(double(a),g);
b = uint8(d);
subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow((d),[]);