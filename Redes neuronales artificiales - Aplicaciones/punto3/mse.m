function [error]=mse(a,b)
[x,y]=size(a);
[k,l]=size(b);
if (y==l)
    suma=zeros(y,1);
for i=1:y
   suma(i)=suma(i) +(a(i)-b(i))^2;
end
error=sum(suma)/y;
else
    disp('los vectores de entradas deben ser de las mismas dimensiones')
end
end