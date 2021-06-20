clc;format bank;
a=0;
b=5;
n=10;
Del=(b-a)/n;
x1=0;
x2=x1+Del;
x3=x2+Del;

while x3<=b
    
f1=x1^2+(54/x1);
f2=x2^2+(54/x2);
f3=x3^2+(54/x3);     
    
if (f1>= f2 && f2<=f3)
     fprintf('The minimum point lie between the interval %d  and  %d.\n',x1,x3);
%      fprintf('   \n');
     fprintf('The optimal solution is %d , which is at x =  %d .\n',f2,x2);  
     break
else 
    fprintf('The minimum does not lie between the interval %d  and  %d.\n',x1,x3); 
%     fprintf('   \n');
end 
x1=x2;
x2=x3;
x3=x2+Del;
end









    
