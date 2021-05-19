x = 0:0.1:10;
y = heaviside (4-x);
z = zmf(x,[2 5.5]);
error_medio = mse(y-z);

disp(error_medio);

hold on;
plot(x,y);
plot(x,z);

hold off;