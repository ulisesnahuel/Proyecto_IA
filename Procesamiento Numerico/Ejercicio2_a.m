x=linspace(0,2*pi,100) %se crea un serie de 100 números
y1=sin(x) 
y2=cos(x)
y3=tan(x)
y4=sec(x)
plot(x,y1) %se grafica la función seno
hold on
plot(x,y2) %se grafica la función coseno
plot(x,y3,'g','LineWidth',2) %se grafica la función tangente 
plot(x,y4,'bd','LineWidth',2) %se grafica la función secante
title('Funciones')