function y = devolver(A,D)
    for i=1:length(D)
        matrix{i} = zeros(10);    
        if D(i) >= 0.75 
            A(i) = mat2cell(ones(10),10);
        else
            if D(i) < 0.15
                 A(i) = mat2cell(zeros(10),10);                
            else
                A(i)= mat2cell(round(9+91*rand(10,10)),10);
            end
        end
        matrix{i} = A(i);
    end
    y = matrix;
end