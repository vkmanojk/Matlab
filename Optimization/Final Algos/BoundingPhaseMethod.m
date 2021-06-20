clc
clear
%% Taking input from user
a = input('What is the lower limit? ');
b = input('What is the upper limit? ');
x0 = input('Enter the initial guess: ');
if x0<=a || x0>=b || b<=a
    disp ('Please enter reasonable values')
end

if x0>a && x0<b && b>a 
    delta_x = input ('Enter the increment: ');
    c = max(a,b); % To set the axex limit

%% Initialization
    k = 0; % Whose value would be incremented once the computation starts
    x1 = x0 - delta_x;
    x2 = x0; 
    x3 = x0 + delta_x; 

%% Taking thefunction as input from user
    str = input('Give an equation in x: ','s'); % the user types in, for instance 2*x^2-3*x+4
    f = inline(str,'x') ;

%% Determining whether the inicrement is positive or negative
    y1 = feval(f,x1); 
    y2 = feval(f,x2);
    y3 = feval(f,x3); 

    if y1 >= y2 && y2 >= y3
        increment_x = abs (delta_x);
    else
        increment_x = -abs (delta_x);
    end
    while (x3 <= b)
        yold = feval (f,x2);
        ynew = feval (f,x3);
        if ynew > yold
            fprintf('k: %f x1: %f x2:%f x3:%f\n',k,x1,x2,x3)
            fprintf('The solution lies betwee %f & %f \n',x3,x2)
            break;
        else
            fprintf('k: %f x1: %f x2:%f x3:%f\n',k,x1,x2,x3)
            k = k+1;
            x2 = x3;
            x3 = x2 + (2^k)*increment_x;
            y2 = feval(f,x2);
            y3 = feval(f,x3);
        end
    end     
    
end
fplot (f,[a b], 'b')% Plotting the function
grid on
hold on
plot(x2,y2,'*') 
hold on
plot(x3,y3,'o') 
hold off
