 c=0;
for i=1:1000000
x=1/randi(9);
y=1/randi(9);

if (x^2 + y^2 <=1)
    c=c+1;
end
end

area=4*(c/1000000)


 