function [y]= concentracion(x,mu)
[i,j]=size(x);
[k,l]=size(mu);
bandera=1;
if(k==1 && i==1)
    if size(x)==size(mu)
        m=size(mu)
        for n=1:m(2)
            if mu(1,n)>1
                  bandera=0
            end
        end
        if  bandera==1
            y=(mu).^2;
            plot(x,y,'g');
            hold on
            plot(x,mu,'r');
            title('Funcion Concentracion');
            xlabel('x');
            ylabel('mu');
            legend('a',' muy a')
            hold off;
        else
            disp('supera el alcance correcto');
        end
    else
        disp('la dimensión de los datos es incorrecta');
    end
else
    disp('los argumentos deben ser vectores filas')
end
    disp('los argumentos deben ser vectores filas')
end
