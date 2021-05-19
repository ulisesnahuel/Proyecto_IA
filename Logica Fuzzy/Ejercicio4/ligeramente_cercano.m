function y=ligeramente_cercano(x,mu) 
    if size(x)==size(mu) 
        fm=mas(x,mu);
        fi=intensif(x,fm); 
        fc=concen(x,fi); 
        fn=negacion(x,fc); 
        fl=min(fi,fn); 
        flc=cercania(x,fl);
        y=flc; plot(x,mu,'r'); 
        
        hold on 
        
        plot(x,y,'b'); 
        xlabel('A')
        ylabel('MUO');
        title('FUNCION LIGERAMENTE CERCANA A');
        legend('periferia','ligeramente cercana a periferia'); 
        
        hold off
    end
end
