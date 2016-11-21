%Returns Hessenberg form of matrix A
function [H] = hessman(A)
[n,n] = size(A);
for k = 1 : n - 2
    [v,beta] = holder(A(k + 1 : n,k));
    A(k+1 : n,k : n) = A(k + 1 : n,k : n) - (beta * v) * (v' * A(k+1 : n,k : n));
    A(:, k + 1 : n) = A(:, k + 1:n) - (A(:, k + 1:n) * v) * (beta * v)';
    A(k + 2 : n, k) = v(2 : n - k);
end
H = triu(A,-1);

