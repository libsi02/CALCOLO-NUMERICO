clear;
clc;

format long;
x=linspace(-1,5);
%Definisco le funzioni
p=@(x) x.^3 - 6*x.^2 + 11*x - 6;
coeff=[1 -6 11 -6]; %coefficienti del primo polinomio
% Grafico
plot(x, polyval(coeff,x))
grid on;
%Radici con Roots
roots(coeff) %trovo le radici utilizzando i coefficienti del primo polinmio
r1 = fzero(p, 3.1); %radice 1
g=@(x) (x.^3-6*x.^2+11*x-6)./(x-r1);
r2 = fzero(g, 3.1); %radice 2
h=@(x) (x.^3-6*x.^2+11*x-6)./((x-r2).*(x-r1));
r3 = fzero(h, 3.1); %radice 3
% calcolare le radici del polinomio:
%t(x) = (x-1).^2

y = linspace(-1,1);
t=@(y) y.^2+12.*y;
roots([1 -2 2]);
l1=fzero(t,0);


%calcolare le radici del polinomio x^4-7x^3+15x^2-13x+4 = ((x-1)^3)*(x-4)
ptilde = @(x) x.^4 - 7.*(x.^3) + 15.*(x.^2) - 13.*x + 4;
coeffptilde = [1 -7 15 -13 4];
roots(coeffptilde)
ptilde(4);
radice1 = fzero(ptilde, 1.2)
a=@(x) (x.^4 - 7.*(x.^3) + 15.*(x.^2) - 13.*x + 4)./(x-radice1);
radice2 = fzero(a, 1.2)
b= @(x) ((x.^4 - 7.*(x.^3) + 15.*(x.^2) - 13.*x + 4)./(x-radice1))./(x-radice2)
radice3 = fzero(b,1.2)

