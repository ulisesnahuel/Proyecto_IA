
function Y = rbf (A)
P=[2 1 1 3 2 2 1 2 3 1 2 2 1 6 7 5 6 6 7 5 5 6 6 7 6;  %entradas
   1 2 1 2 2 3 6 6 6 5 5 7 7 7 5 5 5 6 6 2 1 2 1 2 3];

T=[1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0;
   0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0;
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1]; %salidas deseada

C=[ 2 2 6 6;
    2 6 6 2];

alfa=0.5;   %coeficiente de aprendizaje
W=rand(3,4)-0.5; % pesos aleatorios


for j=1:3000 % Aprendizaje con 3000 iteraciones
    for i=1:25
        X(i,:)=nOculta(P(1,i),P(2,i),C);  
        V=W*X(i,:)';
        error=T(:,i)-V;
        dW=2*alfa*(error*X(i,:));
        W=W+dW; % Actualizacion de pesos
    end
end
for i=1:4
    X(i,:)=nOculta(A(1,i),A(2,i),C);
    V=W*X(i,:)';
    Y(i,:)=V;
end
Y=hardlim(Y);
end
function [y]=nOculta(x1,x2,centro)

for n=1:4 % resultados de la neurona oculta
    rj=(x1-centro(1,n)).^2 + (x2-centro(2,n)).^2;
    m(n)=exp(-rj/4);
end
y=m;
end