a = imread('rice.png');
[m,n] = size(a);
u=1;
v=1;

for i=1:m
    for j=1:n
        if a(i,j)>113
            b(u) = a(i,j);
            u=u+1;
        else
            c(v) = a(i,j);
            v=v+1;
        end
    end
end
m1 = sum(b)/(u-1);
m2 = sum(c)/(v-1);
m = (m1+m2)/2;

figure, imshow(a); 
figure, imshow(a>m);