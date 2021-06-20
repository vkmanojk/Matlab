n=imread('rice.png');
n = imbinarize(n);
imtool(n);
%imtool(n)
pos = [115 132];
kernel = ones(3,3);
last=zeros(size(n));
last(pos(1),pos(2))=1;
current=imdilate(last,kernel)&n;
while any(current(:)~=last(:))
last=current;
current=imdilate(last,kernel)&n;
end

figure,imshow(current), title('Connected');
