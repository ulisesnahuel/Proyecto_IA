t = linspace(0,2.094450)
y = 10 * sin (2*t)
ruido = awgn(y,0.1)
plot (t,ruido,'r','linewidth',3)
grid on