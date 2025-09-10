clear
clc
close all

%Per eseguire una funzione chiamare quest'ultima (con argomento/i) nella command window
function m = Matrice(n)
    m = zeros(n);

    j=n;
    for i=[1:n]
        m(i,j)=2;
        j=j-1;
    end

    j=n-1;
    for i=[1:(n-1)]
        m(i,j)=-1;
        j=j-1;
    end

    j=n;
    for i=[2:n]
        m(i,j)=-1;
        j=j-1;
    end
end


for i=[1:30]
  A = Matrice(i);
  d(i)=det(A);
  c(i)=cond(A);
endfor


plot([1:30],d)
title('Determinanti')
xlabel('Dim Matrice')
ylabel('Determinante')
figure
plot([1:30],c)
title('Condizionamenti')
xlabel('Dim Matrice')
ylabel('Condizionamento')



%Determinante e numero di condizionamento 1->50
%per calcolare il numero di condizioanmento bisogna calcolare ||A||*||A^-1||
%creiamo il vettore con num cond 50



