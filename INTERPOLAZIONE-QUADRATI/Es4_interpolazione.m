close all;
clear;
clc;

a = -1;
b = 1;
n = 22;

f = @(x) sin(x);

%x_nodes = linspace(a, b , n); %nodi equispaziati
%proviamo con i nodi di Chebyshev
n_nodi=n;
x_nodes = (a+b)/2 - ((b-a)/2)*...
    cos((2*[0:n_nodi-1]+1)*pi/(2*(n_nodi-1) +2));

[err, err_p] = interpol(f, x_nodes, a, b)

function [err, err_p] = interpol(f, x_nodes, a, b)
    n = length(x_nodes);
    y_nodes = f(x_nodes);
    coeff = polyfit(x_nodes, y_nodes, n - 1);

    for i = 1:n
        y_nodes(i) = y_nodes(i) * (1 + ((-1)^i) * 10^(-4));
    end
    coeff_p = polyfit(x_nodes, y_nodes, n - 1);



    x_vals = linspace(a, b);
    y_vals = polyval(coeff, x_vals);
    y_vals_p = polyval(coeff_p, x_vals);
    figure;
    hold on;
    plot(x_nodes, y_nodes, '*');
    plot(x_vals, f(x_vals));
    plot(x_vals, y_vals);
    plot(x_vals, y_vals_p);
    legend("Punti di interpolazione", "Seno di x",...
        "Polinoimo interpolatore", "Polinomio perturbato");
    err = norm(f(x_vals) - y_vals, "inf");
    err_p = norm(f(x_vals) - y_vals_p, "inf");
end


