A= input('Enter coefficient matrix: ');
B= input('Enter source matrix: ');
n=length(B);
X=zeros(n, 1);
Aug = [A B];

for j=1:n-1
    for i=j+1:n
        m=Aug(i, j)/Aug(j,j);
        Aug(i, :)=Aug(i,:)- m*Aug(j,:);
    end
end
Aug
X(n,1)=B(n,1)/Aug(n,n+1);