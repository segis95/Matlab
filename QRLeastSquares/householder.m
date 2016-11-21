%QR-decomposition via householder transformation

function [Q,R] = householder(A)
[m,n] = size(A);
R = A; 
Q = eye(m);
for k = 1:n-1
x = zeros(m,1);
x(k:m,1) = R(k:m,k);
q = norm(x);
v = x;
v(k) = x(k) + q;

s = norm(v);
 w = v/s; 
R = householder_mul(R,w);
Q = householder_mul(Q',w)';  %Product QR
end
end