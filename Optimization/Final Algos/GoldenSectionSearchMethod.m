% Fibonacci Search Method
% Matlab version R2018b
% Date: 4th March, 2019 (started)
clc
clear
%% Taking thefunction as input from user
sc = inputdlg('Type an expression that is a function of x ' );    % Taking the equation as input from the user
s = sc{:};                                                            % Function String
f = str2func(['@(x) ' s]);
a = input ('Enter lower boundary point: ');
b = input ('Enter upper boundary point: ');
sn = input ('Enter a very small number: ');
%t = (b-a)*x+a;
%g = str2func(['@(t) ' s]);
%% Initializing the variable
k = 2;
a_new = a;
b_new = b;
Lw = b - a;
aw = (a_new - a)/(b  - a);
bw = (b_new - a)/(b  - a);
Lw = bw - aw;
w1 = aw + .618 * Lw;
w2 = bw - .618 * Lw;
y1 = feval(f,(w1));
y2 = feval(f,(w2));
%% Starting the algorithm
%while Lw > sn
for i=1:100
    
    
    w1 = aw + .618 * Lw;
    w2 = bw - .618 * Lw;
    %if mod (Lw,2) == 0
        y1 = feval(f,((b-a)*(w1)+a));
    %else
        y2 = feval(f,((b-a)*(w2)+a));
    %end
    fprintf('i: %d aw : %f bw: %f Lw: %f w2: %f w1: %f g(w2): %f g(w1): %f \n',i,aw,bw,Lw,w2,w1,y2,y1);
    % Region eliminiation  
    if y2 > y1
        aw = w2;
    else
        bw = w1;
    end
    Lw = bw-aw;
    c = 0.5*(a+b);
    k = k + 1;
end
fprintf ('The minimum value is: %f \n',c);