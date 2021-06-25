function pto_1_a()
    x = linspace(-7, 7, 100);
    y = (2./(1+exp(x))) - 1;
    f = inline('log(1-x)-log(x+1)');
    
    %Punto i)
    
    z_neg = f(0.99);
    z_pos =z_neg*-1;
    disp('punto i');
    disp(['RESULTADOS: ',num2str(z_pos),' y ',num2str(z_neg)])
    %Punto ii)
    z_neg = f(0.8);
    z_pos = z_neg*-1;
    disp('punto ii')
   disp(['RESULTADOS: ',num2str(z_pos),' y ',num2str(z_neg)])
    plot(x,y)
    grid minor
    title('GRAFICA Función Logística')
    xlabel('EJE X') 
    ylabel('EJE Y')
    xlim([-7 7])
    ylim([-1.5 1.5])
   
end