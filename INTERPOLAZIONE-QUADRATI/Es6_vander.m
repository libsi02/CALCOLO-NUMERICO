clear
clc
close all
format long

AllCond = [];
AllErrors = [];
% matrice di Vandermonde su decomposizione
% uniforme dell'intervallo [-5,5]
for n=2:50
    nodi= linspace(-5, 5, n);
    A = vander(nodi);
    x = ones(n,1);
    b = A*x;
    newx = A \ b;
    er1 = norm(x - newx)/norm(x);
    AllErrors = [AllErrors er1];
    AllCond = [AllCond cond(A)];
end

subplot(1,2,1)
semilogy(2:50,AllCond)
title('Condizionamento Vandermonde');
xlabel('Dimensione Matrice');
ylabel('Condizionamento');

subplot(1,2,2)
semilogy(2:50,AllErrors)
title('Errore relativo');
xlabel('Dimensione Matrice');
ylabel('Errore');

% A = hilb(5);
% B = rand(10);
%
% x = ones (5,1);
%
% b = A*x;
%
% newx = A \ b
%
% er1 = norm(x - newx)/norm(x)


