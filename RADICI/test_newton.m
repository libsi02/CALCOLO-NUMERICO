clc
clear
close all

x = 1.1;
f=@(x) cos(2.*x)^2 - x.^2;
df=@(x) -4*cos(2*x)*sin(2*x) - 2*x;

function v = newton(f, df, x0, t, max_iter)
x = x0;
  for i = 1:max_iter
    fx = f(x);
    dfx = df(x);
    xnew = x - (fx/dfx);
    if (abs(xnew - x)<t)
      v=xnew;
      return
    endif
    x = xnew;
  endfor
end

results = newton(f, df, x, 10^(-6), 100)
