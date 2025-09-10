clear;
clc;
close  all;

n_nodi = 35; %numero di nodi

nodi = linspace(-5,5, n_nodi)'; %nodi di Runge
a = -5;
b = 5;
nodi_ch = (a+b)/2 - ((b-a)/2)*...
    cos((2*[0:n_nodi-1]+1)*pi/(2*(n_nodi-1) +2));

f = @(x) 1./(1 + x.^2);  %polinomio interpolatore

valori = f(nodi);  %valori runge
valori_ch = f(nodi_ch);

coeff_pol = polyfit(nodi, valori, n_nodi -1); %coeff runge
coeff_ch = polyfit(nodi_ch, valori_ch, n_nodi - 1); %coeff chebyshev

x = linspace(-5,5,n_nodi.*10);    % *10 = grado di interpolazione

poli_int = polyval(coeff_pol, x) %polinomio di interpolazione runge
poli_ch = polyval(coeff_ch, x) %polinomio di interpolazione chebyshev


plot(nodi, valori, '*')   %plot dei nodi(x) e i valori(p(x)=y)
hold on
plot(x, f(x))             %plot di x(nodi) e p(x)(valori)
hold on
plot(x, poli_int)         %plot di x e il polinomio interpolante
legend("dati", "funzione esatta", "polinomio interpolatore")    %legenda

figure

plot(nodi_ch, valori_ch, '*')   %plot dei nodi(x) e i valori(p(x)=y)
hold on
plot(x, f(x))             %plot di x(nodi) e p(x)(valori)
hold on
plot(x, poli_ch)         %plot di x e il polinomio interpolante
legend("dati", "funzione esatta", "polinomio chebyshev")    %legenda

Err = norm(f(x) - poli_int,inf)   %calcoliamo l'errore
Err2 = norm(f(x) - poli_ch,inf)   %calcoliamo l'errore
[Err Err2]
