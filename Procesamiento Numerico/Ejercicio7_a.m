a = input('ingrese valor: ');
b = input('ingrese valor: ');
c = input('ingrese valor: ');
d = input('ingrese valor: ');
X = [a b b c c d];
Y = [0 0 1 1 0 0 ];
plot(X,Y,'r');
grid
title('FLANCOS')