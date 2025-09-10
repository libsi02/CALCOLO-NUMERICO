clear;
clc
close all;

%Per questo esercizio utilizzerò come vettori i vettori dell'esercizio 4
n=10;
A = rand(n);
Z = rand(n);
%while det(A)!=0
 % A = tril(rand(n));
%endwhile

b = linspace(1,n,n)';
f = linspace(1,n,n)';
Results2=[];
results=[];

disp('A: ')
disp(A)
disp('Z: ')
disp(Z)

%I due algoritmi sono:

%Algoritmo di sostituzione in avanti
  for i=1:n
    sommatoria = 0;
    %Effettuiamo la sommatoria dei vari elementi della matrice
    for k=1:i-1
      sommatoria = sommatoria + A(i,k) * b(k);
    endfor
    results = [results, (b(i) - sommatoria)\A(i,i)];
  endfor


disp('A');
disp(A);
disp('result: ');
disp(results');
disp('linsolve: ');
disp(linsolve(A, b));





