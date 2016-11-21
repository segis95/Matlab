%elementary matrix that multiplies the string number p by alpha
function [matrix] = mul_alpha(n,p, alpha)
matrix = eye(n);
matrix(p,p) = alpha;
