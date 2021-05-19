x = -5:0.1:5;
y = trapmf(x,[-3 0 1 4]);
z = dsigmf(x,[1.46 -1.86 1.51 2.82]);
error_medio = mse(y-z);

disp(error_medio);

hold on;
plot(x,y,txt);
plot(x,z);

hold off;
