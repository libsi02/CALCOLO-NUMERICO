clear;
clc;

% vettore con 3 punti sull'asse x
x=[300 400 500];
% creo la matrice di vandermonde usando x
V=vander(x);
% calcolo il condizionamento di V
cond(V);
% vettore con 3 punti sull'asse y
y=[0.616 0.525 0.457]';
% trovo i coefficienti del polinomio interpolatore (vettori in a)
a=V\y;
% trovo i coefficienti del polinomio interpolatore utilizzando la funzione polyfit di matlab
coeff=polyfit(x,y,2)


