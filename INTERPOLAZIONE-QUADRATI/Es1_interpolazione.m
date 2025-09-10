clear;
clc;
close  all;

n_nodi = 6; %numero di nodi
nodi = linspace(0,2, n_nodi); %creiamo i nodi             X
f = @(x) exp(x).*sin(2*x);  %polinomio interpolatore      P()
valori = f(nodi);  %calcoliamo i valori delle y con f(x)  Y
coeff_pol = polyfit(nodi, valori, n_nodi -1); %coefficienti polinomiali usando x, y e n_nodi - 1
x = linspace(0,2,n_nodi.*5);    % *5 = grado di interpolazione
pol_int = polyval(coeff_pol, x) %creiamo il polinomio interpolante con i coefficienti e x

plot(nodi, valori, '*')   %plot dei nodi(x) e i valori(p(x)=y)
hold on
plot(x, f(x))             %plot di x(nodi) e p(x)(valori)
hold on
plot(x, poli_int)         %plot di x e il polinomio interpolante
legend("dati", "funzione esatta", "polinomio interpolatore")    %legenda

Err = norm(f(x) - poli_int,inf)   %calcoliamo l'errore
