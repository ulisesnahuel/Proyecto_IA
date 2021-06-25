function pto_1_b()
    x = linspace(-4, 4, 100);
    y = tanh(x);
    f = inline('0.5 *(log(1+x)-log (1-x))');
    %Punto i)
    disp('Punto i:');
    z_neg = f(0.99);
    z_pos = z_neg*-1;
    disp(['RESULTADOS: ',num2str(z_pos),' y ',num2str(z_neg)])
    %Punto ii)    
    disp('Punto ii:');
    z_neg = f(0.8);
    z_pos = z_neg*-1;
    disp(['RESULTADOS: ',num2str(z_pos),' y ',num2str(z_neg)])
    plot(x,y)
    grid minor
    title('GRAFICA Tangente Hiperbólica')
    xlabel('EJE X') 
    ylabel('EJE Y')
    xlim([-3 3])
    ylim([-1.5 1.5])
    
end