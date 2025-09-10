clear
clc
close all

f = @(x) exp(-x) - 10^(-9)

eps1 = 10^(-3)
eps2 = 10^(-10)

df = @(x) -exp(-x); %derivata della funzione
radice = -log(10^(-9)); %radice da cui partiamo

%Mostriamo graficamente la funzione
int = linspace(15, 25);
plot(int, f(int));
hold on;
plot(radice, 0, '*r');

function [m,i] = newton(f, dfx, x0, t, maxt)
  x=x0; %inizializziamo la x
  for i=1:maxt
    fx=f(x) %aggiorniamo la funzione nel punto attuale
    dfx=df(x) %aggiorniamo la derivata nel punto attuale
    xx = x -(fx/dfx); %calcolo il nuovo valore di x utilizzando il metodo di newton
    if abs(xx-x)<t  %citerio dell'incremento
      %if abs(fx) < t
      m=xx; %se la differenza tra le due iterazioni è abbastanza piccola
            %la soluzione si può definire accettabile
      return
    endif
    x=xx
  endfor
endfunction

%Definizione della funzione di newton
[newt, iter] = newton(f, df, 15, 10^-10, 1000);

