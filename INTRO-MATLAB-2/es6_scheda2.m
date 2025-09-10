clear
clc
A = [1 2 3 4; 5 6 7 8; 9 10 11 12]
size(A) %simenzioni di A
B = A.*A %moltiplico la matrice con se stessa
%B = A*A %moltiplico la matrice con se stessa senza usanre le op puntate
B = A'*A %moltiplico la trasposta di A con se stessa senza usare op puntate
A(1:2, 4) %Vengono stampati gli elementi presenti in: riga 1 e 2, colonna 4
A(:,3) %Viene stampata la terza colonna
A(1:2,:) %Stampo le prima 2 righe
A(:, [2 4]) %stampo la seconda e quarta colonna
A([2 3 3]) %Stampo il primo elemento in seconda riga e in terza riga
A(3,2)=A(1,1) %Rendo uguale l'elemento in (3,2) a quello in (1,1)
A(1:2,4)=zeros(2,1) %Rendo uguale a 0 gli elementi: 4 e 8
A(2,:)=A(2,:)-A(2,1)/(A(1,1)*A(1,:)
