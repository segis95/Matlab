%We will solve AY=b=PLU*Y via PLU decomposition
function [y] = solver(A,b)
[n,m] = size(A);
[P ,L ,U] = plu_dec(A);
x = zeros(n,1);
b = P'*b; %LUY = P'b
%solving LX = b
for i = 1:1:n
    x(i) = (b(i) - L(i,:)*x)/L(i,i);
end
%solving UY = X
y = zeros(n,1);
for i = n:-1:1
    y(i) = (x(i)-U(i,:)*y)/U(i,i);
end
