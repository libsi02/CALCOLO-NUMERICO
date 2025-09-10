clear
clc
d = -2 * ones(9, 1) %creo la diagonale
cod = 1 * ones(8, 1) %creo le codiagonali
A = diag(d) + diag(cod, 1) + diag(cod, -1)  %"sommando" tra di loro le 3 parti,
                                            %genero la matrice desiderata

A([3 6], :) = A([6 3], :) %Scambio la terza riga con la sesta
A(: , [1 4]) = A(: , [4 1]) %Scambio la prima oclonna con la quarta
