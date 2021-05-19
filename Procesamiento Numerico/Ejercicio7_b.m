X = eye(10); %Matriz identidad
for i = 1:10
    for j = 1:10
        if i ~= j
            X(i,j) = 2+round(7*rand());
        end
    end
end
X %Mostramos el resultado
