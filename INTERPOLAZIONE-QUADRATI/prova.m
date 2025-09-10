clear
clc
close all

%f = @(x) exp(x).*cos(4.*x);
f = @(x) abs(x - 1);

n_nodi = 15;
nodi = linspace(-3,3,n_nodi);
valori = f(nodi);

V = vander(nodi);

coeff = V \ valori';

%coeff_pol = polyfit(nodi, valori, n_nodi-1);

%x5 = linspace(-3, 3, 5);
%x10 = linspace(-3, 3, 10);
%x20 = linspace(-3, 3, 20);
%x40 = linspace(-3, 3, 40);

x = linspace(-3,3,100);

pol_int = polyval(coeff, x);

Err = norm(f(x) - pol_int, inf)


X = [-3 1 3];

pol_linear = interp1(X,f(X),x)   %interpolazione composita
Err_comp = norm(f(x) - pol_linear)



plot(nodi, valori, '*')
hold on
plot(x, f(x))
hold on
plot(x, pol_int)
hold on
plot(x, pol_linear)


legend("dati" , "funzione esatta", "polinomio interpolatore", "interpolazione composita")


