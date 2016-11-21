%PLU - decomposition 
function [P,L,U] = plu_dec(A)
[n,m] = size(A);
C = zeros(n,1);
C(1:n,1) = A(1:n,1);
[p,q] = max(abs(C));

if q == 1
    P = eye(n);
else
    P = permutation(n,1,q);
    A = P*A;
end
L = eye(n);
U = eye(n);

for i = 1:1:n
    C = zeros(n,1);
    C(i:n,1) = A(i:n,i);
    [p,q] = max(abs(C));
    if q ~= i
        L = permutation(n,i,q)*L*permutation(n,i,q);
        A = permutation(n,i,q)*A;
        P = P * permutation(n,i,q);
    end
    y = A(i,i);
    A = mul_alpha(n,i,1/y)*A;
    L = L*mul_alpha(n,i,y);
    for j = i+1:1:n
        if A(j,i) ~= 0
            y = A(j,i);
            A = add_str(n,i,j,-y)*A;
            L = L*add_str(n,i,j,y);
        end
    end
end
    
    U = A;
    
    
        
        
