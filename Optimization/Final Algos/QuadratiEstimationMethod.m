% Quadratic Estimation Method
% It is a type of point Elimination Method
clear all
clc
% Input Initial value x1
x1=input('Enter the initial value \n');

% Input the step length
delta=input('Enter delta\n');

% Enter the range
a=input('Enter the minimum value of x \n');
b=input('Enter the maximum value of x\n');

% Input the maximum no. of Iterations
n=input('Enter maximum number of iterations \n');

% Input Function in the @(x) x.^2+54./x form
fun=input('Enter the objective Function \n');

% Let's plot the function
t=linspace(a,b,100);
plot(t,fun(t),'k','LineWidth',2);
title('Quadratic Estimation Method');
xlabel('x');
ylabel('f(x)');
grid on
hold on


% Evaluate function value at 'x1'
fx1=feval(fun,x1);

% Find 'x2'
x2=x1+delta;

% Evaluate funcation at 'x2'
fx2=feval(fun,x2);

% To find search direction
% Identify the sign of delta

if fx1>fx2
    delta1=delta;
elseif fx1<fx2
    delta1=-delta;
end

% Define 'k' to get number of iterations
k=1;

xn1=x1;              %     
xn2=xn1+delta1;      % Define new 'x1','x2' and 'x3'
xn3=xn1+2*delta1;    %
% To display results

 %disp('Iterations        x1                 fx1          ');
 %disp('----------------------------------------------------------------------------------');
while k<=n % 'k' less than equal to n
    
   %


fxn1=feval(fun,xn1); %
fxn2=feval(fun,xn2); % Find function values at 'x1','x2' and 'x3'
fxn3=feval(fun,xn3); %


% Find the coefficients of Quadratic function
% Function is of the form 'a0+a1(x-x1)+a2(x-x1)(x-x2)'

a0=fxn1;
a1=(fxn2-fxn1)/(xn2-xn1);
a2=(((fxn3-fxn1)/(xn3-xn1))-a1)/(xn3-xn2);

% Find the value of 'xbar' which give the minimum of the 
% above quadratic Approximation

xbar=((xn1+xn2)/2)-(a1/(2*a2));

% Find value of function at 'xbar'
fxbar=feval(fun,xbar);

fprintf('x1 %f x2 %f x3 %f xbar %f fx1 %f fx2 %f fx3 %f fxbar %f\n',xn1,xn2,xn3,xbar,fxn1,fxn2,fxn3,fxbar);
% construct a vector with elements 'x1','x2','x3' and 'xbar'
   
r=[xn1;xn2;xn3;xbar];

% Similarly construct a vector with value of function evaluations 

s=[fxn1;fxn2;fxn3;fxbar];

% Arrange function values in increasing order
[~,j]=sort(s);

% Use the information of 'min' to 'max' value from above
% and arrange 'x' in the same order
u=(r(j));

% Extract the value of 'x' for which the function attains minima
% put this value in 'x1'
xn1=u(1);              %     
xn2=u(2);     % Define new 'x1','x2' and 'x3'
xn3=u(3); 

k=k+1;


% Plot points
  plot(xbar,fxbar,'.r','MarkerSize',35);
  hold on
   
    
 % This will display the iterations on screen
 
end

xmin=xn1;
fmin=feval(fun,xn1);
