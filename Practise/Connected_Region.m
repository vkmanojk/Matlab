a = imread('text.png');
a = a - imerode(a,ones(3,3));
imtool(a);
pos = [11 11];
[x,y]=size(a);
kernel = ones(3,3);
last = zeros(x,y);
last(pos(1),pos(2))=1;
current = imdilate(last,kernel)&~a;
while any(last(:)~=current(:))
    last = current;
    current = imdilate(last,kernel)&~a;
end
imshow(current);