a = imread('rice.png');
a = im2double(a);
[x,y]=size(a);
x = 2*x;
y = 2*y;
f = fft2(a,x,y);
f = fftshift(f);
H = zeros(x,y);
R = 50;
t=0;
n=1;
K=H;
J=K;
for i=1:x
    for j=1:y
        d = sqrt((i-x/2)^2+(j-y/2)^2);
        t=((d/R)^(2*n))+1;      
        H(i,j)=1/t;
        if d < R
           J(i,j)=1; 
        end
        d=d^2;
        K(i,j) = exp(-1*d/(2*(R^2)));
    end
end
%H = 1-H;
G = H.*f;
b = real(ifft2(fftshift(G)));
b = b(1:x/2,1:y/2);
%figure,imshow(b,[]);title('blurred image');
%figure,imshow(H,[]);title('orig image');
figure,mesh(1-H),axis off,title('Butterworth');
figure,mesh(1-K),axis off,title('Gaussian');
figure,mesh(1-J),axis off,title('Ideal');
