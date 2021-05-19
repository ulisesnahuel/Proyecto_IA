function y = porcentaje(A,ORIG)
    for i = 1:length(A)
        compar(i)=similitud_matrices(A{i},ORIG);
    end
    y = compar;
end