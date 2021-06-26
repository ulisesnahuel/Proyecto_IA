%cruza
infu=zeros(25,1);%individuo fuera del rang
promut=rand(50,10);%probabilidad
for k=1:25
for i=1:50
    [padre1,padre2]=convertir(pmut(i,:));
    padre1=abs(padre1);
    padre2=abs(padre2);
    if padre1>padre2
        aux=pmut(i,6:10);
        padre=1;
    else
        aux=pmut(i,1:5);
        padre=2;
        
    end
    
    aux(1)=pmut(i,1)*pmut(i,6);
    for j=2:5
        if promut(i,j)<=0.77
            aux(j)=round(mean([pmut(i,j),pmut(i,j+5)]));
        end
    end
    aux1=1000*aux(2)+100*aux(3)+10*aux(4)+aux(5);
    if aux1<=5555 && aux1>=-5555
       if padre==1 
        pmut(i,1:5)=aux;
        
       else
        pmut(i,6:10)=aux;
        
       end
      
    else
    if padre1<padre2
        if padre==1 
        pmut(i,1:5)=pmut(i,1:5);
       else
        pmut(i,6:10)=pmut(i,1:5);
        end
    else
        if padre==1 
        pmut(i,1:5)= pmut(i,6:10);
       else
        pmut(i,6:10)= pmut(i,6:10);
        end
    infu(k)=infu(k)+1;
    end
    end
end
if k==1
    primerg=pmut;
end
if k==12
    mediag=pmut;
end
if k==25
    ultimag=pmut;
end
end
disp('poblacion incial :')
pinicial
disp('parejas :')
pi
[X,Y]=convertir(primerg);
scatter(subplot(2,2,1),X,Y);
title('primera generacion')
[X,Y]=convertir(mediag);
scatter(subplot(2,2,2),X,Y);
title('generacion intermedia')
[X,Y]=convertir(ultimag);
scatter(subplot(2,2,[3,4]),X,Y);
title('ultima generacion')