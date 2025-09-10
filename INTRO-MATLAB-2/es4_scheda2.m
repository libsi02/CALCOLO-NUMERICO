clear
clc
x = linspace(0, 10^10, 10)'
f1 = x.*(sqrt(x.^2+1)-x)
f2 = x.*(sqrt(x.^2+1)-x.^2)
f3 = x./(sqrt(x.^2+1)+x)
% Le tre funzioni sono la stessa funzione riscritta in modi differenti,
% tutte e tre con limite 0.5

