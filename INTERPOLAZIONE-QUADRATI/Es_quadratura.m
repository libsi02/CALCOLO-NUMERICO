clear
clc
close all

f = @(x) x.*exp(-x).*cos(2.*x);
a = 0;
b = 2*pi;
n_nodi = 1000;

integral_result = integral(f,a,b);
% err = [];
% rapporti = [];
%
% for i = 1:10
%     x = linspace(a,b,n_nodi);
%     f_values = f(x);
%     integral_trapz = trapz(x,f_values);
%     err = [err abs(integral_trapz-integral_result)];
%     n_nodi = n_nodi*2;
% end
%
% err';
% rapporti = err(1:end-1)./(err(2:end));
% rapporti';

% Formula del punto medio composita
function r = PMC(f, a, b, m)
    x = linspace(a,b,m+1);
    H = (b-a)/m;
    v = x(1:m) + H/2;
    r = H*sum(f(v));
    %r = 0;
    %for i = 1:m
    %    r = r + H*f((x(i)+x(i+1))/2);
    %end
end

% Formula del trapezio composita
function r = trapz_c(f, a, b, m)
    x = linspace(a,b,m+1);
    H = (b-a)/m;

    r = H/2*(f(x(1)) + 2*sum(f(x(2:end-1)))+f(x(end)));
    %r = 0;
    %for i = 1:m
    %    r = r + H*f((x(i)+x(i+1))/2);
    %end
end





err1 = abs(integral_result - PMC(f, a, b, n_nodi))
err2 = abs(integral_result - trapz_c(f, a, b, n_nodi))
