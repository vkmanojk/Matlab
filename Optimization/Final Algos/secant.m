function [xmin,fmin]=secant(a,b,n,f)

% First plot the function
fplot(f,[a,b],2);

hold on

k=1;

% If the number of iterations are less than the max. iterations
while k<=n
    x1=a;
    x2=b;
    
    
        deltax=.001;
    

    Df1=(f(x1+deltax)-f(x1-deltax))/(2*deltax);
    Df2=(f(x2+deltax)-f(x2-deltax))/(2*deltax);
    
    x3= ((x1 * Df2)- (x2 * Df1))/(Df2-Df1);
    
% To find derivative we need to find 'deltax' 




% Find the value of Derivatives at 'x1','x2' and 'x3'

    
    Df3=(f(x3+deltax)-f(x3-deltax))/(2*deltax);
    
% Region Elimination 
   
    if Df1*Df2>0
        disp('No minima in (a,b)')
    elseif (Df3)<0
        a=x3;
    elseif (Df3)>0
        b=x3;
    end

% Find 'x' at which 'f' is minimum

    xmin=x3;
    fmin=f(x3);
    
    
% Plot points

    plot(x3,f(x3),'or','MarkerSize',10);
    hold on
   
    
    % This will display the iterations on screen
    fprintf('x1: %f x2: %f z: %f f1: %f f2: %f f"(z): %f\n',x1,x2,x3,Df1,Df2,Df3);
    k=k+1;
end