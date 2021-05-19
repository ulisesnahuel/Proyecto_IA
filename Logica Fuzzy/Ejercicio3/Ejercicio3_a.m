%RAPIDO Y FURIOSO
%Establecemos las entradas
x=linspace(0,10,100);
%Definimos las variables lingüísticas
%movimiento LENTO, MODERADO y RÁPIDO 
lento = trimf(x, [0 0 4]);
moderado = trimf(x,[4 6 8]);
rapido = trimf(x, [8 10 10]);
% temperamento CALMADO, INSENSIBLE, FURIOSO
calmado = trimf(x,[0 0 4]);
insensible = trimf(x,[3 5 7]);
furioso = trimf(x,[7 10 10]);
%rapido y furioso.
rapido_y_furioso = min(rapido,furioso); 

p= plot(x,rapido,'bo',x,furioso,'g',x,rapido_y_furioso,'r','lineWidth',3);
p(1).LineWidth = 1;
p(2).LineWidth = 1;
p(3).LineWidth = 4;

title('SUPERPOSICION DE FUNCIONES DE PERTENCIA'); %Título
xlabel('EJE X');
ylabel('PERTENCIA');
legend('rapido','furioso','rapido y furioso');