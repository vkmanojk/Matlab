clear all;
f=imread('rice.png');
h=size(f,1);
w=size(f,2);
F1=fft2(f,2*h,2*w);
F1=fftshift(F1);
R=50;
h=2*h;
w=w*2;
H1=zeros(h,w);
for v=1:h
    for u=1:w
        if ((v-h/2)^2+(u-w/2)^2)<=R^2
            H1(u,v)=1;
        end
    end
end
% H1=fftshift(H1);
H2=1-H1;
figure,imshow(f,[]);title('input image');
figure,imshow(H1,[]);title('filter function');
figure,imshow(H2,[]),title('FF');
% H1=ifftshift(H);
% figure,imshow(H1,[]);
G = H1.* F1;
G1= H2.*F1;


G=fftshift(G);
G1=fftshift(G1);
g=real(ifft2(G));
g1=real(ifft2(G1));
g=g(1:size(f,1),1:size(f,2));
g1=g1(1:size(f,1),1:size(f,2));
% figure,imshow(log(abs((G))),[]);title('filtered output ');
figure,imshow(g,[]);title('blurred image');
figure,imshow(g1,[]);title('sharpened image');