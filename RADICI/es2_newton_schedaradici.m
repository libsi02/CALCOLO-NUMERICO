%creo una funzione per applicare il metodo di Newton
%input: funzione, derivata, punto innesco, tolleranza
%output: successione degli approssimanti

%f(x)=cos^2(2x)-x^2
clear;
clc;
close all;

x = 1.2;  %punto da cui partiamo nella funzione di newton
f = @(x) cos(2*x).^2 - x.^2; %funzione
df = @(x) -4*cos(2*x)*sin(2*x) - 2*x; %derivata della funzione f

%inizializziamo la funzione
function m = newton(f, df, x0, t, max_iter)
  x = x0;
  for i = 1:max_iter
    fx = f(x) %valuta la funzione nel puinto attuale x
    dfx = df(x);  %valuta la derivata nel punto attuale x
    x_new = x - fx/dfx;  %calcolo il nuovo valore di x usando il metodo di newton
    if abs(x_new - x) < t %se la differenza tra le due iterazione è abbastanza piccola
                          % allora la soluzione si considera abbastanza precisa
      m = x_new;
      return;
    endif
    x = x_new;  %Aggiorno x per la prossima iterazione
  endfor
end


res = newton(f, df, x, 10^(-6), 100) % tolleranza = 10^(-6), iterazioni massime = 100
