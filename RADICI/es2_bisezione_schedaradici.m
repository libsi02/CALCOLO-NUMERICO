%creo una function per applicare il metodo di bisezione.
%input: funzione, [a,b] in cui funzione cambia segno, tolleranza
%output: successione degli approssimanti

%f(x) = cos^2(2x)-x^2
clear;
clc;
close all;

f=@(x) cos(2.*x)^2 - x.^2;

% x=linspace(-1,1);
% plot(x,f(x));
% pause;

%definizione di bisezione
function v = bisezione(f,a,b,t)
  v=[]; %inizializzo il vettore che conterrà gli approssimanti
  while b-a > t %ciclo fino a quando l'intervallo [a,b] è più grande della tolleranza
    m=(a+b)/2;  %calcolo il punto medio
    v=[v,m];  %aggiungo l'approssimante corrente al vettore
    y=f(m);   %calcolo  il valore della funzione nel punto medio

    %verifico in quale intervallo cambia il segno
    if(y*f(a) < 0)
      b=m;  %intervallo [a,m]
    elseif(y*f(a) > 0)
      a=m;  %intervallo [b,m]
    else
      disp('ho trovato la  radice') %caso raro in cui f(m) = 0, esatto
      return
    end
  end
end




fzero(f,1)  %uso il metodo di matlab per le radici
res = bisezione(f,0,1,10^(-6)); %implemento ed utilizzo il mio metodo di bisezione
semilogy(abs(res-fzero(f,1)));  %confronto graficamente i due metodi
