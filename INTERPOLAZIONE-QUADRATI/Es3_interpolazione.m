clear
clc
close all

% f = @(x) exp(x).*cos(4.*x);
f = @(x) abs(x - 1)

n_nodi = 15;
nodi = linspace(-3,3,n_nodi);
y = f(nodi);

V = vander(nodi);

coeff = V \ y';

% coeff_pol = polyfit(nodi,y,n_nodi-1)

x = linspace(-3,3,100);

poli_int = polyval(coeff,x);

Err = norm(f(x) - poli_int, inf)


X = [-3 1 3];

pol_linear = interp1(X,f(X),x)
Err_comp = norm(f(x) - pol_linear)

plot(nodi,y,'*')
hold on

plot(x,f(x))
hold on

plot(x,poli_int)
hold on

plot (x,pol_linear);


legend("dati" , "funzione esatta", "polinomio interpolatore", "interpolazione composita")








