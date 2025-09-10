clear
clc
close all

f= @(x) (x./8)*(63*x.^4 - 70*x.^2 + 15);

function m = bisezione(f,a,b,t)
  v=[];
  while b-a > t
    m = (a+b)/2;
    v = [v,m];
    y = f(m);
    if(y*f(a) < 0)
      b=m;  %intervallo [a,m]
    elseif(y*f(a) > 0)
      a=m;  %intervallo [b,m]
    else
      disp('ho trovato la  radice') %caso raro in cui f(m) = 0, esatto
      return
    end
  endwhile
endfunction

roots([1 -1 15])
res = bisezione(f, 0.6, 1, 10^(-10))
