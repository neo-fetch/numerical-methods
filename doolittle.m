n = 4;

A = [6,-2,2,4 ; 12,-8,6,10 ; 3,-13,9,3 ; -6,4,1,-18];
B = [12 ; 34 ; 27 ; -38];
% A = [1, 1, 1 ; 4, 3, -1 ; 3 , 5, 3];
% B = [1 ; 6 ; 3];
Y = [0 ; 0 ; 0 ; 0];
X = [0 ; 0 ; 0 ; 0];
L = zeros(n);
U = zeros(n);
sum = 0;

%Decomposing A into LU
for i = 1:n
    L(i,i) = 1;
    %Seperately for L
    for j = 1 : i-1
        for k = 1 : (j-1)
            sum = sum + L(i,k)*U(k,j);
        end
        L(i,j) = (A(i,j) - sum)/(U(j,j)); 
        sum = 0;
    end
    %Separately for U
    sum = 0;
    for j = i : n  
        for k = 1 : (i-1)
            sum = sum + L(i,k)*U(k,j);
        end
        U(i,j) = A(i,j) - sum;
        sum = 0;
    end
end

%Finding y matrix from (L^-1)*B
%Remember that a lower trianglular matrix is used
%So the conditions on the for loop will change
for i = 1:n
    sum = 0;
    for j = 1:(i-1)
        sum = sum + L(i,j)*Y(j);
    end
    Y(i) = (1/L(i,i))*(B(i)-sum);
end

%Finding x matrix from (U^-1)*Y
for i = n:-1:1
    sum = 0;
    for j = (i+1):n
        sum = sum + U(i,j)*X(j);
    end
    X(i) = (1/U(i,i))*(Y(i)-sum);
end

disp(X);
