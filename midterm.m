x(1)=0;
y(1)=4;
h=0.25;
for i=1:6
k1= h*f(x(i),y(i));
k2=h*f(x(i)+ h/2,y(i) + (k2*h/2));
p=k2;
y(i+1)= y(i) + k2*p;
disp(y(i+1))
end
