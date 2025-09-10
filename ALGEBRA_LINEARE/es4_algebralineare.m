clear;
clc;
close all;

A = [2 3 1; 1 -1 1; 0 2 2];
B = [1 2 1; -1 2 -1; 2 0 2];
C = [1 0 1; 0 1 1; 1 0 2];

AB = A*B;
BA = B*A;

%verifico facendo un confronto booleano tra le due operazioni,
%successivamente eseguo una somma algebrica, per poi trovare il massimo tra le
%differenze per capire se le due operazioni sono effettivamente uguali

AB == BA
D = AB - BA;
elem = max(max(abs(D)))

ABC = (A+B)+C;
abc = A+(B+C);

ABC == abc
D = ABC - abc;
elem = max(max(abs(D)))

Abc = A*(B*C);
abC = (A*B)*C;

Abc == abC
D = Abc - abC;
elem = max(max(abs(D)))

abT = (A*B)'
ABt = A' * B';

abT == ABt
D = abT - ABt;
elem = max(max(abs(D)))
