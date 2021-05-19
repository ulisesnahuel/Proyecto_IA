function [y] = mas(x,mu) 
    if size(mu)==size(x)
    y=mu.^1.25; 
    plot(x,y,'m'); 
    hold on 
    plot(x,mu,'g');
    xlabel('x');
    ylabel('mu'); 
    title('Funcion Mas'); 
    legend('a','mas(a)');
    hold off
    end
end
    