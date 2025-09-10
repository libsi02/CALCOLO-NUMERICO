clc0,100,f,10^(-6),df
clear
close all

%Solo l'lemeento richiesto
function fb = fibonacci(n)
    if n == 0 %caso base
      fb=0;
    elseif n == 1 %n = 1
      fb=1;
    else  %da qui in poi calcolo la somma fino all'n-esimo elemento
      a = 0;
      b = 1;
      for i=2:n
        fb = a + b;
        a = b;
        b = fb;
      endfor
    end
end

%Vettore di Fibonacci
function fbVec = fibonacciVec(n)
    n = round(n)
    maxN = max(n)
    tab = zeros(1, maxN+1);
    tab(1) = 0;
     if maxN >= 1
       tab(2)=1;
     endif
     for i = 3:maxN+1
       tab(i) = tab(i-1)+tab(i-2);
     endfor

     fbVec = tab(n+1);
end


s = linspace(1,5,10);
f = fibonacci(10)
fbVec = fibonacciVec(s)
fbVecmenun = fibonacciVec(s-1)
ratio = fbVec ./ fbVecmenun;
con = (1-sqrt(5))/2
err1=abs(fbVec-con)
figure;
plot(s, fibonacciVec(s))
grid on;
xlabel('n')
ylabel('Fabonacci')

