function [x,y]=convertir(a)
[k,l]=size(a);
x=zeros(k,1);
y=zeros(k,1);
for i=1:k
    numero=0;
    
    for j=2:5
        numero=numero+a(i,j)*10^(5-j);
    end
    if a(i,1)==1
        numero=numero*-1;
    end
    numero2=0;
 
    for j=7:10
        numero2=numero2+a(i,j)*10^(10-j);
    end
    if a(i,6)==1
        numero2=numero2*-1;
    end
x(i,1)=numero;
y(i,1)=numero2;
end
end
