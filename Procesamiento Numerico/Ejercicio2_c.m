x1 = linspace (-10,-2, 20);
x2 = linspace (-2, 0, 20) ;
x3 = linspace (0, 10, 20);
y1 = -2.186*x1 -12.864;
y2 = 4.246 * x2;
y3 = 10*exp(-0.05*x3-0.5).*sin(0.03*x3.^2+0.7*x3);
plot(x1,y1,'r',x2,y2,'b',x3,y3,'g')
grid %Grilla
title('GRÁFICA POR PARTES') %Título
xlabel('EJE X') 
ylabel('EJE Y')
legend('-2.186X - 12.864','4.246X','10 * e^(-0.05*X-0.5) * sin(0.03X^2+0.7X)')