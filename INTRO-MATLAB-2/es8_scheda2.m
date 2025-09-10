clear
clc
alfa = 10;
p = 10^alfa;
b=(1+p^2)/p;
t1= (b + sqrt(b^2-4))/2 %t^2 - b*t +1 = 0 sto risolvendo questa equazione
t2= (b - sqrt(b^2-4))/2;
x1=sqrt(t1);
x2=-sqrt(t1);
x3=sqrt(t2);
x4=-sqrt(t2);
[x1,x2,x3,x4]
sqrt(p)
sqrt(1/p)

