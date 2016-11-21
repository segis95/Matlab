function [M] = householder_mul(A,v)

beta = -2;
w = beta * (A' * v);
M = A + v * w';
end