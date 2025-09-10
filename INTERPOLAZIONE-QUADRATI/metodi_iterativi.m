%Confronto Jacobi Gauss-Seidel
clear
clc
%A=[3 0 4; 7 4 2; -1 -1 -2];
%A=[-3 3 -6; -4 7 -8; 5 7 -9];
%A=[4 1 1; 2 -9 0; 0 -8 -6];
A=[7 6 9; 4 5 -4; -7 -3 8];
sol=ones(3,1); %soluzione esatta
b=A*sol;
%metodo di Jacobi
D=diag(diag(A));
C=A-D;
toll=10^-5; %tolleranza
x_old=[1:3]';
x_new=x_old.*2;
count=0;
mat_iter=-inv(D)*C;
raggio_spett=max(abs(eig(mat_iter)));
disp('raggio spettrale')
disp(raggio_spett)
%while norm(x_new-x_old)>toll %criterio dell'incremento
while norm(b-A*x_new)>toll
    x_old=x_new;
    x_new=mat_iter*x_old + inv(D)*b;
    count=count+1;
end
disp('n iter')
disp(count)
disp('x')
disp(x_new)

x_old=[1:3]';
x_new=x_old.*2;
[sol, nIter] = metodo_gauss_seidel(A, x_new, b, toll)

function [x, nIter] = metodo_gauss_seidel(A, x0, b, tolleranza)
    DE = tril(A);
    F = triu(A, 1);

    M_iter = -inv(DE)*F;

    max(abs(eig(M_iter)))

    x = x0;
    nIter = 0;

    while true
    xNew =-inv(DE)*F*x+inv(DE)*b;

        if (norm(xNew-x) < tolleranza)
            x = xNew;
            return;
        end

    x = xNew;
    nIter = nIter + 1;
end

end
