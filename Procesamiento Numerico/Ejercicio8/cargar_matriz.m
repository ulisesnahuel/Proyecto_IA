function y = cargar_matriz(n)
for i=1:15                      %15 matrices
    matrix{i}=zeros(n);         %matrices de zeros
    j=1;
    while j <= 15
        random_1 = round((n-1).*rand)+1; 
        random_2 = round((n-1).*rand)+1; 
        if matrix{i}(random_1,random_2) == 0
            matrix{i}(random_1,random_2) = 1;
            j = j+1;
        end
    end
end
    y = matrix;
end