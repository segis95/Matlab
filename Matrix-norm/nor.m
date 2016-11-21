%iterative algoritm finding the 1-norm of the matrix

function [y] = nor(A)
[n,m] = size(A);
%A = [0.1238    0.8603    0.9998
%    0.0132    0.6801    0.0582
%    0.1803    0.6322    0.3188]
%B = inv(A);
B = A;
E = eye(n);
%x = E(:,2);
%x = 1/1000*rand(n,1)
x = [0.1122;0.6821;0.5970];
w = B*x;
S = sign(w)
z = B'*S
%[j,i] = max(abs(z));
%x = E(:,i);
norm(z,inf)
z'*x
norm(z,inf) - z'*x
while norm(z,inf) > z'*x
    [j,i] = max(abs(z));
    x = E(:,i);
    w = B*x
    S = sign(w);
    z = B'*S;
end

y = norm(w,1);
    

