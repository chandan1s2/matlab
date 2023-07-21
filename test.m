A=[1.1 0 0; 0 1.5 0; 0  0 1.8]
b=[8;9;10]
Ab=[A,b];
[R, C]=size(Ab);
x=solver(A, b, Ab);
disp(x)
X1=inv(A)*b;
disp(X1)