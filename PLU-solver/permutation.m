%generates a permutation matrix(strings p <->q)
function [matrix] = permutation(n,p,q)
matrix = eye(n);
matrix(p,p) = 0;
matrix(q,q) = 0;
matrix(p,q) = 1;
matrix(q,p) = 1;