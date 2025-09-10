clear
clc

a = ones(1,8)

b = [1:8]'

A = b*a;

S = triu(A);

I = tril(A)

c=zeros(1,8);

C = diag(S);

s = diag(C);

S = S-s;

S = triu(A,1);

I = tril(A,-1) + eye(size(A))

