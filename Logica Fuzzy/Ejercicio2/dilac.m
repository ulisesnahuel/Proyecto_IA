function [y]=dilacion(x,mu)
[i,j]=size(x);
[k,l]=size(mu);
bandera=1;
if(k==1 && i==1)
    if size(x)==size(mu)
        m=size(mu);
        for n=1:m(2)
            if mu(1,n)>1
                bandera=0;
            end
        end
        if  bandera==1
            y = mu.^0.5;
            plot(x,y,'r');
            hold on
            plot(x,mu,'b');
            xlabel('x');
            ylabel('mu');
            title('Funcion Dilación');
            text(15,0.5,'A');
            text (4,0.7,'MAS O MENOS A');
            legend('mas o menos a','a')
            hold off
         else
            disp('supera el alcance correcto');
        end
    else
        disp('la dimensión de los datos es incorrecta');
    end
else
    disp('los argumentos deben ser vectores filas')
end