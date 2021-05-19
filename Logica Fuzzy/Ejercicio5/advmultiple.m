function [x,mu,muadv]=advmultiple(x,mu,a,b,c)
[i,j]=size(x);
[k,l]=size(mu);
bandera=1;
e=nargin;
muadv={1:e};
switch e
	case 3
    	lista={a};
	case 4
    	lista={a;b};
	case 5
    	lista={a;b;c};
end
mu2=mu;    
if(k==1 && i==1)
	if size(x)==size(mu)
    	m=size(mu);
    	for n=1:m(2)
        	if mu(1,n)>1
            	bandera=0;
        	end
    	end
    	if  bandera==1      	 
        	for n=1:e-2
            	aux=lista(n,:);
          	switch char(aux)
              	case 'muy'              	 
                  	mu2=mu2.^2;
                  	muadv(1,n)={'muy'};
              	case 'sumamente'
                  	mu2=mu2.^3;
                   	muadv(1,n)={'sumamente'};
              	case 'mas'
                  	mu2=mu2.^1.25;
                   	muadv(1,n)={'mas'};
              	case 'menos'
                  	mu2=mu2.^0.75;
                   	muadv(1,n)={'menos'};
              	case 'aproximadamente'
                  	mu2=(mu2.^0.5).^0.5;
                   	muadv(1,n)={'aproximadamente'};
              	otherwise
                  	disp('el advervio nose encontro');
          	end
        	end
        	plot(x,mu,'r');
        	hold on
        	plot(x,mu2,'b');
        	xlabel('x');
        	ylabel('mu');
        	title('Advebios multiples');
        	hold off
    	else
        	disp('supera el alcance correcto');
    	end
	else
    	disp('la dimesión de los datos es incorrecta');
	end
else
	disp('los argumentos deben ser vectores filas')
end
