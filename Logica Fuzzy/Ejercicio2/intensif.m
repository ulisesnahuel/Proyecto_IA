function [y]=intensif(x,mu)
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
            mu2=mu;
            for k=1:j
                if mu2(i,k) >=0 && mu2(i,k)<=0.5
                    mu2(i,k)=2 * mu2(i,k);
                else
                    if mu2 (i,k) > 0.5 && mu2 (i,k) <=1
                        mu2(i,k)=1 - (2* (1-mu2(i,k))^2);
                    end
                end
            end
            plot(x, mu, 'r');
            xlabel ('x');
            ylabel ('mu');
            title ('Función Intensificación');
            hold on
            plot (x,mu2, 'g');
            hold off
            y=mu2;
            legend('a','intensaemnte a')
        else
            disp('supera el alcance correcto');
        end
    else
        disp('la dimensión de los datos es incorrecta');
    end
else
    disp('los argumentos deben ser vectores filas')
end 