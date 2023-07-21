%{ 
        ----------BISECTION METHOD--------
f=  @(x) 2^x-5*x+2;
a=0;
b=1;
n=20;
e=0.0001;

THE GUESSES ARE SUCH THAT F(A)F(B)<0

if f(a)*f(b)<0
  for i=0:n 
m=(a+b)/2;

if abs(m-b)<e || abs(m-a)<e
    break
end
fprintf('P%d = %0.4f\n', i, m)
if f(a)*f(m)<0
    b=m;

elseif f(m)*f(b)<0
    a=m;
end
    end

else
    disp('No root in the given interval')
end


        
     -----------NEWTON RAPHSON METHOD-------------

f= input('Enter function = ');
df =input('Enter derivative = ');
x0= input('Enter initial guess = ');
n= input('Enter number of iterations = ');
e= input('Enter tolerance = ');

THE GUESS IS JUST A RANDOM X

if df(x0) ~=0
   for i=1:n
   x1=x0- f(x0)/df(x0);
   fprintf('x%d = %.4f\n', i, x1)
   if abs((x1-x0))<e
       break
   end
   if df(x1)==0
       break
   end
 x0=x1;
   end
else
    disp ('Newton Raphson failed')
end

   ---------------SECANT METHOD-----------------------

f=input('Enter function = ');
x0=input('Enter first guess = ');
x1=input('Enter second guess = ');
n=input('Enter number of iterations = ');
e=input('Enter tolerance = ');
%THE GUESSES ARE JUST RANDOM GUESSES, IT IS NOT NECESSARY THAT THEY HAVE
%ROOT BETWEEN THEM

    for i=1:n
        x2= x1 - ((f(x1)*(x1-x0))/(f(x1)-f(x0)));
        fprintf('x%d = %.9f\n', i , x2)
        if abs(x2-x1) < e
            break
        end

        x0=x1;
        x1=x2;
    end
    %SECENT METHOD NEVER FAILS

---------------REGULAR FALSI METHOD-----------------------

f= @(x) 2^x-5*x+2;
x0=0;
x1=1;
n=10;
e=10^-4;
if f(x1)*f(x0)<0 && x0<x1
for i=1:n
x2=x1- ((x1-x0)*(f(x1)))/( f(x1)-f(x0) );
 fprintf('C%d = %.4f\n', (i), x2)

if abs(x2-x1)<e || abs(x2-x0)<e ||abs(f(x2))<e
    break
end

if f(x2)*f(x0)<0
   x1=x2;
elseif f(x2)*f(x1)<0
    x0=x2;
end


end
else
    disp('Regular falsi failed')
end


----------FIXED POINT METHOD---------------

g=input('Enter function = ');
x0=input('Enter first root = ');
n=input('Enter number of iterations = ');
e=input('Enter tolerance = ');

for i=1:n
    x1=g(x0);
  
    fprintf('x%d = %.4f\n', i , x1);
   if abs(x1-x0)<e || abs(g(x1) + x1) <e
        break
    end
      x0=x1;
end

%}

% ----------NEWTON'S DIVIDEND DIFFERENCE---------------

x=[0 1 2 4 5 6];
y=[1 14 15 5 6 19];
X=input('Input the value of X = ');
