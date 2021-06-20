n=imread('rice.png');
n = imbinarize(n);
im=n&~imerode(n,ones(3,3));
imtool(im);
pos = [115 132];
kernel = ones(3,3);
current=zeros(size(im));
last=zeros(size(im));
last(pos(1),pos(2))=1;
%figure,imshow(imdilate(last,kernel));
current=imdilate(last,kernel)&~im;
while any(current(:)~=last(:))
last=current;
current=imdilate(last,kernel)&~im;
end

figure, imshow(im), title('Boundary');
figure, imshow(current), title('Filled');

