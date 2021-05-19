A=round(100*rand(20,25))% genera una matriz de 20x25 de números enteros positivos
A1=A(5:7,5:12) % se crea una matriz 
A2=A% se el asigna a A2 los valores de A
A2(:,11:14)=[] % se elimina la columna de 11 a 14
A2(9:13,:)=[] %se elimina la  fila de 9 a 13