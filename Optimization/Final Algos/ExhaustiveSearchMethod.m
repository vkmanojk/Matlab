% Exhaustive Search Method as Explained in the book 
%"Optimization of Engineering Design: Algorithms and Examples" by Prof. Kalyanmoy Deb
% Code developed by Sri. Soumyabrata Bhattacharjee
% Matlab version R2018b
% Date: 14th October, 2018
clc
clear
%% Taking input from user
a = input('What is the lower limit? ');
b = input('What is the upper limit? ');
delta_x = input('What is the increment? ');
% = (b-a)/n; % Increment in x
c = max(a,b) % To set the axex limit

%% Initialization
x1 = a;
x2 = x1 + delta_x; 
x3 = x2 + delta_x; 

%% Taking thefunction as input from user
str = input('Give an equation in x: ','s'); % the user types in, for instance 2*x^2-3*x+4
f = inline(str,'x') ;

%% Evaluating the function for x1, x2 & x3
while (x3 <= b)
    y1 = feval(f,x1); 
    y2 = feval(f,x2);
    y3 = feval(f,x3); 
    if y1>y2 && y2<y3 
        fprintf('The solution lies between %f & %f \n The solution is (approximately)%f: \n',x1,x3,x2);
        break
    else
        
        x1 = x2;
        x2 = x3;
        x3 = x2 + delta_x;
    end
    fprintf('x1: %f f(x1): %f\n',x1,y1);
    fplot (f,[a b], 'b')% Plotting the function
    grid on
    hold on
    plot(x2,y2,'*') % Plotting the minimum pooint
    hold off
end
