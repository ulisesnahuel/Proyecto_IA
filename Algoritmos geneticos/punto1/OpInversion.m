%individuos con 10 bits cada uno
%110010000 numero 400 en binario
%P0=randi([0,1],50,10) %poblacion inicial
Pobmut=P0;            %Poblacion mutada
cont=zeros(1,100)

for k=1:100 %100 iteraciones
    valores=zeros(50,1);
    %probabilidad de probabilidad de invension
    Pmut=rand(50,1);
sprintf('Iteracion: %d',k)
%contador de individuos que se salen de la poblacion
cont_out=0; %contador de individuos que salen de poblacion 
cs=0;       %contador mutador de signo
for i=1:50
    if Pmut(i)<=0.1
    %Cantidad de individuos mutados en la generacion k
    cont(k)=cont(k)+1;
    p1=randi([1,10],1,1);
    p2=randi([1,10],1,1);
    aux=Pobmut(i,p1);
    Pobmut(i,p1)=Pobmut(i,p2);
    Pobmut(i,p2)=Pobmut(i,p1);

    if p1==1 | p2==1
        cs=cs+1;
    end
    aux=Pobmut(i,2:10);%control si excedio valor
    aux=num2str(aux);%conversion de individuo a cadena para usar bin2dec

    if bin2dec(aux)>400 
    cont_out=cont_out+1;
    end
    
    sprintf('invertido bit %d con bit %d de individuo %d con Pmut=%3.1f %%',p1,p2,i,Pmut(i)*100)
    end
end

v_out(k)=cont_out; %vector que acumula los contadores de la cantidad de ind. que salieron del espacio
v_signo(k)=cs; %vector que acumula los contadores de los numeros que cambiaron de signo

%se guardan los valores en un vector columna
for m=1:50 
    %control de signo
    if Pobmut(m,1)==1
        valores(m)=-1*bin2dec(num2str(Pobmut(m,2:10)));
    else
        valores(m)=bin2dec(num2str(Pobmut(m,2:10)));    
    end
    if valores(m)>400 | valores(m)<-400
        valores(m)=0;
    end
end
maximos(k)=max(valores);
minimos(k)=min(valores);
promedio(k)=mean(valores);
end
%SALIDA

subplot(2,2,1);
bar(v_out,'FaceColor',[0 .5 .5],'EdgeColor',[0 .9 .9],'LineWidth',1.5)
title('ind. que salen del espacio de datos')


subplot(2,2,2);
bar(v_signo,'FaceColor',[0 .5 .5],'EdgeColor',[0 .9 .9],'LineWidth',1.5)
title('ind. que cambian de signo')

X=linspace(1,100,100);
subplot(2,2,[3,4]);
plot(X,maximos,X,minimos,X,promedio)
legend({'Max. positivo','Max. negativo','Promedio'},'Location','southwest')
axis ([0 100 -500 500])


disp('Población inicial P0');
disp(P0);
disp('Población mutada Pmut');
disp(Pobmut);