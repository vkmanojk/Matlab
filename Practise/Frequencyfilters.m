a = imread('pout.tif');
a = double(a);
[h,w]=size(a);
h=2*h;
w=2*w;
f = fft2(a,h,w);
fs = fftshift(f);
H1 = zeros(h,w);
H2=H1;
H3=H2;
R=50;
n=1;
for i=1:h
    for j=1:w
        d = sqrt((i-h/2)^2 + (j-w/2)^2);        
        if d<=R
            H1(i,j) = 1;
        end
        t = 1+(d/R)^(2*n);
        H2(i,j)=1/t;
        H3(i,j)=exp(-1*(d/(2*R))^2);
    end    
end

G1 = fs.*H1;
G2 = fs.*H2;
G3 = fs.*H3;

g1 = real(ifft2(fftshift(G1)));
g2 = real(ifft2(fftshift(G2)));
g3 = real(ifft2(fftshift(G3)));

g1 = g1(1:h/2,1:w/2);
g2 = g2(1:h/2,1:w/2);
g3 = g3(1:h/2,1:w/2);

figure,subplot(131),imshow(g1,[]);
subplot(132),imshow(g2,[]);
subplot(133),imshow(g3,[]);
