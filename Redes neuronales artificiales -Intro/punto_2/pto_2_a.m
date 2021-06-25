function pto_2_a()
    %Punto i)
    z_pos =sqrt(-log(0.01)*2*1^2);
    z_neg =z_pos*-1;
    disp('Funcion Gaussiana')
    disp('punto i');
    disp(['valor de x: ',num2str(z_neg),' y ',num2str(z_pos)])
    %Punto ii)
    disp('Punto ii')
    sigma=0.5;
    hold on;
    for i=1:6
    x = linspace(-10, 10, 100);
    y = exp(-(x.^2/2*sigma^2));
    plot(x,y)
    z_pos =sqrt(-log(0.01)*2*sigma^2);
    area=pi*z_pos^2;
    disp(['Area de la base ',num2str(area),'  para la apertura ',num2str(sigma)])
    sigma=sigma+0.5;
    end
    grid minor
    title('GRAFICA Función Gaussiana')
    xlabel('EJE X') 
    ylabel('EJE Y')
    xlim([-10 10])
    legend('Funcion Gaussiana Apertura 0.5 ','Funcion Gaussiana Apertura 1','Funcion Gaussiana Apertura 1.5','Funcion Gaussiana Apertura 2','Funcion Gaussiana Apertura 2.5 ','Funcion Gaussiana Apertura 3' );
    hold off
end