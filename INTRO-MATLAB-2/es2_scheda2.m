clear
clc
x=[1: -0.1: 0]
x([1 4 3])  %vengono mostrati a video gli elementi in posizione: 1, 4, 3
x([1:2:7 10])=zeros(1,5) %A 2 a 2, gli elementi dalla posizione 1 a 7 vengono sostituiti con degli 0
x([1 2 5])=[0.5*ones(1,2) -0.3]
y=x(end:-1:1) %"Copiamo" il vettore x in y, ma invertito
