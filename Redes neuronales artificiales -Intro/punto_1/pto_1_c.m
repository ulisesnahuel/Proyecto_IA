function pto_1_c()
    x = linspace(-8, 8, 100);
    y = x ./ sqrt(1+x.^2);
    
    f = inline('(x^2)');
    g = inline('(x^2)-1');
    disp('Punto i:');
    z_neg = sqrt(-(f(0.99) / g(0.99)));
    z_pos = z_neg*-1;
    disp(['RESULTADOS: ',num2str(z_pos),' y ',num2str(z_neg)])
    disp('Punto ii:');
    z_neg = sqrt(-(f(0.8) / g(0.8)));
    z_pos = z_neg*-1;
    disp(['RESULTADOS: ',num2str(z_pos),' y ',num2str(z_neg)])
    plot(x,y)
    grid minor
    title('GRAFICA Algebraica')
    xlabel('EJE X') 
    ylabel('EJE Y')
    xlim([-8 8])
    ylim([-1.5 1.5])
    %5.8 aproximadamene tien que darme
end