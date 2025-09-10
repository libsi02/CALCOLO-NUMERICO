clear
clc
close all
n=50;
%matrice tridiagonale di numeri casuali simmetrica
sdiag=rand(n-1,1);
A=diag(rand(n,1))+diag(sdiag,-1)+diag(sdiag,+1);
% %matrice assegnata a lezione
% A=diag(2*ones(n,1))-...
%     diag(ones(n-1,1),1)-diag(ones(n-1,1),-1);
% sdiag=diag(A,1);
toll=10^-16;
%algoritmo determinanti
d(1)=1;
d(2)=A(1,1);
for k=2:n
    if(abs(d(k))<=toll)
        disp('matrice non fattorizzabile')
        return
    else
        d(k+1)=A(k,k)*d(k)-sdiag(k-1)^2*d(k-1);
    end
end
det(A)
%fattorizzazione LU
if (abs(d(n+1))<=toll)
    disp('matrice singolare')
else
    disp('il determinante della matrice e''')
    d(n+1)
    u(1)=d(2)/d(1);
    for k=1:n-1
        l(k)=sdiag(k)*d(k)/d(k+1);
        u(k+1)=d(k+2)/d(k+1);
    end
    L=eye(n)+diag(l,-1);
    U=diag(u)+diag(sdiag,+1);
end
%verifica A=LU
disp(norm(A-L*U,inf))

