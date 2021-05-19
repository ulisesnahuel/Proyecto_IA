function [y] = negacion(x,mu);
    if size(x)==size(x)
        y=1-mu; 
        plot(x,y,'g'); 
        hold on 
        plot(x,mu,'m');
        title('NEGACION'); xlabel('A');
        ylabel('MU'); legend('Negado','A'); 
        hold off
    end
end

 
