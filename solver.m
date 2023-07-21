function [X,ops]=solver(A, b, Ab)
[R, C]=size(Ab);
ops=0;
% Pivoting Section::
for j=1:(R-1)
    if Ab(j,j)==0
        for k=(j+1):R
fprintf('Pivot Equation %d has %d Pivot Element So Exchange Row %d \n', j, Ab(j,j), k)

if Ab(k,j)~=0
    abTemp=Ab(j,:);
Ab(j,:)=Ab(k,:);
Ab(k,:)= abTemp;
break
end
        end
    end
end
for j=1:length(b)
    fprintf('Divide the Pivot Row %d with Pivot Element %0.4f To Normalizing The Pivot Row', j, Ab(j,j))

    Ab(j, : )= Ab(j, :)/Ab(j,j);
    ops=ops+15;
    for i=1:length(b)
        if i~=j
          fprintf ('Multiplying Row %i With %0.3f and Subtract from Row%d', j, Ab(i, j)/Ab(j,j), i)
            Ab(i,:)=Ab(i,:)-Ab(i,j)*Ab(j,:)
            ops=ops+(16);  
        end
    end
end

X=Ab(:, length(Ab));
%ops
plot(X)
