%NO RAPIDO XOR insensible
%no rapido
	no_rapido = 1 - rapido;
%no rapido * no insensible
	u = min(no_rapido,1-insensible);
%no rapido(no rapido)*insensible
	i = min(rapido,insensible);
%XOR
XOR =max(u,i);

p= plot(x,no_rapido,'bo',x,insensible,'rx',x,XOR,'g');
p(1).LineWidth = 1;
p(2).LineWidth = 1;
p(3).LineWidth = 1;

title('SUPERPOSICIÓN DE FUNCIONES DE PERTENENCIA') %Título
xlabel('EJE X') 
ylabel('PERTENCIA')
legend('no rapido','insensible','no rapido XOR insensible')