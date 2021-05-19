function [m]=punto10b(B)
A=round(-1+(2).*rand(15,15))% genera una matriz de 15x15 de números enteros positivos
matriz=size(A); %se obtiene las filas y columnas de A
matriz2=size(B); %se obtiene las filas y columnas de B
for i=1:(matriz2(1,1)) %se recorre las filas desde la fila 1 hasta la 13
    	for j=1:(matriz2(1,2)) %se recorre las columnas desde la columna 1 hasta la 13
        	if (B(i,j)<-1 || B(i,j)>1)
            	m='B no esta en el rango de A';
            	return
        	end
    	end
end

if matriz2(1,1)==3 && matriz2(1,2)==2% se comprueba que la matriz es de 3x2
	for i=1:(matriz(1,1)-2) %se recorre las filas desde la fila 1 hasta la 13
    	for j=1:(matriz(1,2)-1) %se recorre las columnas desde la columna 1 hasta la 13
        	a=A(i:i+2,j:j+1);%se almacena la fila de 3x2 en la variable a
        	if B==a;%se compara a con B
            	m=a; %si es igual se asigna a m
            	return;
        	end
    	end
	end
    	for i=1:(matriz2(1,1)-1)%  se recorre la matriz A desde la posición 1 hasta la 14
        	for j=1:(matriz2(1,2)-1)%se recorre la matriz A desde la posición 1 hasta la 14
            	ban=true;%se declara una bandera para saber si se encontró una matriz 2x2
            	a=A(i:i+1,j:j+1);%se almacena a matriz 2x2 en a
            	for k=1:2% se recorre la matriz a fila por fila
                	for l=1:2%se recorre la matriz columna por columna
                    	if a(k,l)<0 %se comprueba si el elemento a(k,l) es menor que cero
                        	ban=false;%se pone la bandera en falso
                        	break;%se sale del bucle for
                    	end
                	end
            	end
            	if ban
                	m=a;
                	return;
            	else
                	m='no se ha encontrado la submatriz b, tampoco una matriz 2x2 no';
                	return;
            	end
        	end
    	end
    
else
	disp('la matriz B debe ser una matriz 3x2')
end
end
