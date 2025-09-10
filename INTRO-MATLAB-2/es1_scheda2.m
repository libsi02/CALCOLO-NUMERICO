clear
clc
%Parte A
x = [-3 5 8 0 1 5 -2 4]
x(6) = 100 %Impongo a 100 il sesto elemento
x(1:3) = [5 6 7]  %impongo a 5, 6, 7 il primo, secondo e terzo elemento
x(4) = [] %rimuovo il quarto elemento
x(4:7) = [] %rimuovo dal quarto al settimo elemento
X = [1, 2, 3, x]  %Aggiungo 1, 2, 3 in testa
x = [x, 10, 11, 12] %Aggiungo 10, 11, 12 in coda

%Parte B
A = eye(4)  %Creo la matrice identità
A(1,1) = A(3,4) %Sostituisco l'elemento (1,1) con l'elemento(3,4)
A = [ones(4,1) A] %Aggiungo una colonna di 1 in testa
A = [A ones(4,1)] %Aggiungo una colonna di 1 in coda
A = [ones(1,6)*4; A]  %Aggiungo una riga di 4 in testa
A = [A; ones(1,6)*4]  %Aggiungo una riga di 4 in coda
A(3, :) = []  %Tolgo la terza riga
A(:, 3) = []  %Tolgo la terza colonna
