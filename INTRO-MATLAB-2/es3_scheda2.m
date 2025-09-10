clear
clc
%n=[1:10:100]  provo con un vettore
n=linspace(0, 1000, 10)  %provo con linspace
f1 = [1+(1./n)].^n
abs(exp(1)-f1) %verifichiamo la convergenza
f2 = [(4*n)./(n+2)]
abs(4-f2) %verifichiamo la convergenza
f3 = [log(1+sqrt(n./(n+1)))]
abs(log(2) - f3)  %verifichiamo la convergenza
