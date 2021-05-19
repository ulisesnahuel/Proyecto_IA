function p = diagonal(matriz,valor)
FilCol = size(matriz);
	if (valor~=0)&&(valor~=1)
		error('El 2do parámetro debe ser 0 o 1');%Ausencia de coma
	end
	if FilCol(1)~=FilCol(2)
		error('La matriz debe ser cuadrada');%Ausencia de coma
	end
for i=1:FilCol(1)
	for j=1:FilCol(2)
		if i==j %Ausencia de “=” para que sea un condicional
			matriz(i,j)=valor;
		end
	end
end %Ausencia cierre del for
p=matriz;
end %Ausencia del finalizar end