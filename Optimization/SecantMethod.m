% Program to find roots of a function, f(x)=0 using Secant Method
%==========================================================================
% Required Inputs:
%==========================================================================
% Function Definition (using Anonymous Function)
% Initial Guess
% Maximum number of iterations
% Relative error tolerance for variable, x
%==========================================================================
% Root of the function,x
%==========================================================================

% Version 1.0
% Date: 6th July,2018

%==========================================================================
% Developed by : Arshad Afzal, India, Email: arshad.afzal@gmail.com 
%==========================================================================

% Function Definition
%==========================================================================
 fun = @(x) 5*x+log(x)-exp(x);
%==========================================================================

fprintf('\n---Before Running this program edit the Function Definition given in the problem---\n ');
fprintf('\n---FUNCTION DEFINITION UPDATED ?, chose Yes/ No---\n');

choice = menu('Answer','Yes','No');

if choice == 1
    
% Required Inputs to start the algorithm, and termination criterions
%==========================================================================
x0 = input('\nEnter the initial guess values as row/column vector, x0 :');
Maxiter = input('\nEnter the maximum number of iterations :');
Tol = input('\nEnter the relative error tolerance for x :');
%==========================================================================

% Initialization
%==========================================================================
iter = 1;
% Vector for Storing 'x' at each iteration
x  = zeros(Maxiter,1);
% Vector for storing Function value at each iteration
funval = zeros(Maxiter,1);
% Starting guess for iteration
x(1) = x0(1); funval(1) = fun(x(1));
x(2) = x0(2); funval(1) = fun(x(2));
% Vector for storing Realtive error in 'x' at each iteration
Err = zeros(Maxiter,1);
% Flag for Showing Iteration Information
ShowIterInfo = true;  
%==========================================================================
% Check for Function at initial Guesses

if isinf(fun(x(1))) || isnan(Derfun(x(2)))
        fprintf('\n------THE FUNCTION VALUE MUST BE REAL AND FINITE-----\n');
        fprintf('\n--------------TRY A DIFFERENT INITIAL GUESS----------\n');
        return;
end

%==========================================================================

% Main Program
%==========================================================================
while (iter <= Maxiter)
    x(iter+2)=x(iter+1)-fun(x(iter+1))*(x(iter+1)-x(iter))/(fun(x(iter+1))-fun(x(iter)));
    funval(iter+2) = fun(x(iter+2));
    Err(iter) = abs((x(iter+2)-x(iter+1))/x(iter+2));
    
    % Display Iteration Information
        if ShowIterInfo
            disp(['Iteration ' num2str(iter) ' : x =' num2str(x(iter+2)) ' FUNCTION VALUE = ' num2str(funval(iter+2))]);
        end
        
    % Check for Relative error in the variable,x   
    if (Err(iter)< Tol)
        fprintf('\n -----CHANGE IN VARIABLE VALUE LESS THAN SPECIFIED TOLERANCE-----\n');
        break;
    end
   
    if (iter == Maxiter)
        fprintf('\n -----MAXIMUM NUMBER OF ITERATIONS REACHED-----\n');
        break;
    end
    iter = iter+1;
end

Sol = x(iter+2)
Functionvalue = funval(iter+2)
else
        fprintf('\n -----------EDIT THE FUNCTION DEFINITION TO PROCEED-----------\n');
end