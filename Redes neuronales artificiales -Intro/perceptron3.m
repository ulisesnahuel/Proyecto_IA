
clear, close all, clc
% aprendizaje y objetivos
P = [0 0 0 0 1 1 1 1; %patrones de entrada
     0 0 1 1 0 0 1 1;
     0 1 0 1 0 1 0 1]; 
 
T = [-1 1 1 -1 1 -1 -1 1];  %salida deseada (XOR 3 entradas)
Q = length(P);
no = 4 ;  %Numero de neuronas en la capa oculta
v = 1;   % Ventana de valores iniciales
% Valores iniciales pesos y bias(sesgo)
W1 = v*(2*rand(no,3)-1);
b1 = v*(2*rand(no,1)-1);
W2 = v*(2*rand(1,no)-1);
b2 = v*(2*rand-1);
alfa = 0.001; %
for E = 1:10000 % epocas
    sum = 0;
    for q = 1:Q
        %q = randi(Q); entradas sean aleatorias
        % Propagación de la entrada hacia la salida
        a1 = tansig(W1*P(:,q) + b1);% salida de la capa oculta 
        a2(q) = tansig(W2*a1 + b2);% salida de la capa dos
        % Retropropagación de la sensibilidades
        e = T(q)-a2(q);% error
        s2 = -2*(1-a2(q)^2)*e;% sensibilidad capa salida
        s1 = diag(1-a1.^2)*W2'*s2;% sensibilididad capa oculta
        % Actualización de pesos sinapticos y polarizaciones
        W2 = W2 - alfa*s2*a1';% pesos sinaptico 
        b2 = b2 - alfa*s2;% polarizacion
        W1 = W1 - alfa*s1*P(:,q)';
        b1 = b1 - alfa*s1;  
        % Sumando el error cuadratico 
        sum = e^2 + sum;% error cuadratico
    end
    % Error cuadratico medio
    emedio(E) = sum/Q; % calcular el error cuadratico medio cada vez que se haga una epoca
end
 plot(emedio,'r')

for q = 1:Q
    t(q) = hardlims(W2*tansig(W1*P(:,q) + b1)+ b2); %calculamos la salida de toda la multicapa
end
T %Salida deseada
t %salida aprox



