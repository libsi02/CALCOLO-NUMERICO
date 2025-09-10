clear
clc
close all
x=[0.49,0.64,0.81];   %x
y=[0.7,0.8,0.9];      %y

n=length(x);          %grado
deegre=n-1;           %n_nodi
coeff_x=polyfit(x,y,deegre);    %coefficienti polinomiali
y1=polyval(coeff_x,0.6);        %punto di interpolazione

scarto=abs(y1-sqrt(0.6))

  %stessa cosa anche dopo l'aggiunta del nuovo valore

x=[0.49,0.64,0.81,0.36];
y=[0.7,0.8,0.9,0.6];

n=length(x);
deegre=n-1;
coeff_x=polyfit(x,y,deegre);
y1=polyval(coeff_x,0.6);

scarto=abs(y1-sqrt(0.6))
