h=1;
f(x, y)=(1+2*x(i+1))*(y(i+1))^(1/2);
x0=0;
y0=1;
% implicit
for i=0:10
    yi=yi + h*f;
    fprintf('y%d = %f\n', i+1, yi)
    xi=xi + h;
end