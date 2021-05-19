function y = similitud_matrices(A,ORIG)%es la matris ejempleo,bes la selecionada de 15 matris
lim1 = size(A);
lim2 = size(ORIG);
i = 0;
for j=1:lim1 
    for t=1:lim1
       if A(j,t)== ORIG(j,t)
           i=i+1;
       end
    end
end
    y= i/(lim1(1)*lim1(1));
end