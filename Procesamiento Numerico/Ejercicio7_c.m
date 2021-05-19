cantidad=str2num(input('ingrese la cantidad de números a generar :','s'));
cifras=str2num(input('ingrese la cantidad de cifras :','s'));
a=input('ingrese el inicio del intervalo :','s');
while(length(a)<cifras || length(a)>cifras)
	disp('El inicio del intervalo debe tener las misma cifras que quiere generar')
	a=input('ingrese el inicio del intervalo :','s');
end
b=input('ingrese el final del intervalo :','s');
while(length(b)<cifras || length(b)>cifras)
	disp('El inicio del intervalo debe tener las misma cifras que quiere generar')
	b=input('ingrese el inicio del intervalo :','s');
end
a=str2num(a);
b=str2num(b);
randi([a b],1,cantidad)