x=linspace(-10,10,500);%se generan 200 puntos
y=(x.^2+x).*cos(x);% se obtiene los valores de la funcion
maximo=max(y);% se calcula el maximo y obtenemos el maximo
[x fval exitflag] = ga(@(x)(-(x.^2+x).*cos(x)),1,[ ],[ ],[ ],[ ],-10,10);
disp('maximo real: ')
maximo
disp('maximo calculado :')
-fval
disp('valor en x :')
x