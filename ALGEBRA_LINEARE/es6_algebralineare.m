clear;
clc;
close all;

AllCond=[];
AllErrors=[];

% Creiamo la matrice di Hilbert, e successivamente la matrice x per cui Ax = b,
% troviamo b e calcoliamo la nuova matrice verticale x,
% poi calcoliamo l'errore tra le due matrici usando il rapporto tra:
% la norma della somma algebrica tra x e newx e la norma di x.
% Infine salviamo l'errore ottenuto in un vettore, così come per il condizionamento di A
for i=2:50
  A = rand(i);
  x = ones(i,1);
  b = A*x;
  newx = A \ b;
  er1 = norm(x - newx)/norm(x);
  AllErrors = [AllErrors er1];
  AllCond = [AllCond cond(A)];
 endfor

 %La matrice di Hilbert è mal condizionata

% Mostriamo graficamente, nella stessa scheda e su due colonne differenti,
% sia il condizionamento della matrice di hilbert, sia l'errore relativo.
 subplot(1,2,1)
 semilogy(2:50, AllCond)
 title('Condizionamento Hilb');
 xlabel('DImensione Matrice');
 ylabel('Condizionamento');

 subplot(1,2,2)
 semilogy(2:50, AllErrors)
 title('Errore Relativo');
 xlabel('Errore Matrice');
 ylabel('Errore');


%Costriuamo le due matrici
%A=hilb(10);
%B=rand(10);

%x = ones(10,1);
%y = ones(10,1);

%risolvo il sistema
%Ax = b;
%By = c;
%b = A*x;
%c = B*y;

%verifichiamo
%newx = A \ b;
%newy = B \ c;

%clacloliamo l'errore usando la norma per ottenre un valore solo
%er1 = norm(x - newx)/norm(x);
%er2 = norm(y - newy)/norm(y);

