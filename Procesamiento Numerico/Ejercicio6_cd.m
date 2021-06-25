t = linspace(0,2.094450)
y = 10 * sin (2*t)
u = mean(y);
o = std(y);
ruido = awgn(y,10,'measured')
plot (t,y,'r',t,ruido,'b','linewidth',3)
grid on
u = mean (t) % media
o = std(t) %Desviacion estandar
