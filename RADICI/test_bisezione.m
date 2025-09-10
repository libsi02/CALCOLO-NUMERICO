clc
clear
close all

x = linspace(1,10,10);
f=@(x) cos(2.*x)^2 - x.^2;

function v = bisezione(f,a,b, t)

v=[];
  while (b-a)>t
    m = (a+b)/2;
    v=[v,m];
    y=f(m);
    if ((f(a)*y)<0)
      b=m;
    elseif ((f(a)*y)>0)
      a=m;
    else  %caso base
      disp(' ho trovato la radice')
      return
    endif
  endwhile
end

results = bisezione(f, 0, 1, 10^(-6));
fzero(f,1);
