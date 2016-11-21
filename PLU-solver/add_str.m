%elementary matrix for adding (string number q of matrix of size n)*alpha to (string number p)
function [matrix] = add_str(n,p,q,alpha)
matrix = eye(n);
matrix(q,p) = alpha;
