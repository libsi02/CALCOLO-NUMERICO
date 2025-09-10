clear
clc

R = (5*30)/100  %raggio più grande del 30%
V = (4/3)*pi*R^3  %Volume della sfera con R

%Parte 2
x = 0.1;
ex = exp(x) % Valore esatto di e^x
p1 = 1 + x % Prima approssimazione
p2 = 1 + x + (x^2)/2 % Seconda approssimazione

ea1 = abs(ex - p1) % Errore assoluto per p1
ea2 = abs(ex - p2) % Errore assoluto per p2
er1 = ea1 / ex % Errore relativo per p1
er2 = ea2 / ex % Errore relativo per p2

%Parte 3
% Equazione 1: 2t^2 - 4t - 1 = 0
coeff1 = [2 -4 -1];
radici1 = roots(coeff1);

% Equazione 2: x^4 + 2x^2 - 3 = 0
coeff2 = [1 0 2 0 -3];
radici2 = roots(coeff2);

