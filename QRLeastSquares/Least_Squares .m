%Least squares method via QR -transformation
function [x] =  Least_Squares(A, b, reg)

if reg == 1
    [m,n]=size(A);
    [Q,R] = householder(A);
    M = R(1:n, 1:n);
    c = Q' * b;
    x = solver(M, c(1:n));
else 
    x = solver(A' * A, A' * b);
end

end
