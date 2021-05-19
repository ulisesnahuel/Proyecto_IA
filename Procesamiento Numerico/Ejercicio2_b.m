x = linspace(0,10,70) % crea línea intervalo(0,10) con 70 puntos
y2 = exp((((x-5).^3)/(0.5)))
plot(x,y2,'c-d','linewidth',2) % Color-línea de trazo-marca;grosor(linewiht,2)
xlabel('X')
ylabel('Y')
title('Funcion exponencial')
