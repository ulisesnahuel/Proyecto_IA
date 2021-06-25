function pto_2_c()
    %Punto i)
    z_pos =sqrt((1/0.01)^2-1);
    z_neg =z_pos*-1;
    disp('Funcion Inversa MultiCuadratica')
    disp('punto i');
    disp(['valor de x: ',num2str(z_neg),' y ',num2str(z_pos)])
    %Punto ii)
    disp('Punto ii')
    sigma=0.5;
    hold on;
    for i=1:6
    x = linspace(-10, 10, 100);
    y = (sigma^2)./sqrt(sigma^2+x.^2);
    plot(x,y)
    z_pos =sqrt((sigma^2/0.01)^2-sigma^2);
    area=pi*z_pos^2;
    disp(['Area de la base ',num2str(area),'  para la apertura ',num2str(sigma)])
    sigma=sigma+0.5;
    end
    grid minor
    title('GRAFICA Función Inversa Multicuadratica')
    xlabel('EJE X') 
    ylabel('EJE Y')
    xlim([-10 10])
    legend('Funcion Inversa Multicuadratica Apertura 0.5 ','Funcion Inversa Multicuadratica Apertura 1','Funcion Inversa Multicuadratica Apertura 1.5','Funcion Inversa Multicuadratica Apertura 2','Funcion Inversa Multicuadratica Apertura 2.5 ','Funcion Inversa Multicuadratica Apertura 3' );
    hold off
end