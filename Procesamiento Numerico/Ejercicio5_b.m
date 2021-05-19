x=linspace(-10,10,100)
y=cos(3*x).*exp(-x.^2/2)
plot(x,y)
hold on
y1=mapminmax(y,-1,0)
plot(x,y1)
xlabel('X')
ylabel('Y')
title('Reescalado de función wavelet Morlet')