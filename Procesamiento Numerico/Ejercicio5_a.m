x=linspace(0,3,40); %se genera una serie de 40 elementos
y=x*4/3; %se calcula los valores de las funcion
x1=linspace(3,4,40); %se crea una serie de 40 elementos
y1=-4*x1+16; %se calcula los valores de la otra función
plot(x,y,'b'); %se grafica la función
hold on;
plot(x1,y1,'r') %e grafica la función
y2=mapminmax(y,0,1); %se hace el reescalado
y3=mapminmax(y1,0,1);% se hace el reescalado
plot(x,y2,'b') %se grafica la función reescalada
plot(x1,y3,'r')
xlabel('X');
ylabel('Y');
%Cálculo de Centro de gravedad
b1=x(size(x))-x(1);%se calcula la base del primer triangulo
h1=y((size(y)))-y(1);%se calcul la altura del primer triangulo
if(h1(2)<0)% si la altura es negativa se cambia el signo
    h1=-h1;
end
a1=(b1(2)*h1(2))/2;%se calcula el area del primer triangulo
b2=x1(size(x))-x1(1);%se calcula la base del segundo triangulo
h2=y1((size(y1)))-y1(1);%se calcula la altura del segundo triangulo
if(h2(2)<0)%si la altura es negativa se cambia el signo
    h2=-h2;
end
a2=(b2(2)*h2(2))/2;%se calcula el area del segundo triangulo
centroidey=(h1/3*a1+h2/3*a2)/(a1+a2);%se calcula el centroide en x
centroidex=(b1*2/3*a1+b2/3*a2)/(a1+a2);%se calcula el centroide en y 
centroprimergrafico=[centroidex(2) centroidey(2)] 

b1=x(size(x))-x(1); %se calcula la base del primer triangulo de la figura redimensionada
h1=y2((size(y2)))-y2(1);%se calcula la altura del primer triangulo de la figura redimensionada
if(h1(2)<0)%se cambia de signo si la altura es negativa
    h1=-h1;
end
a1=(b1(2)*h1(2))/2;%se calcula el area del primer triangulo de la figura redimensionada
b2=x1(size(x))-x1(1);%se calcula la base del segundo triangulo de la figura redimensionada
h2=y3((size(y3)))-y3(1);%se calcula la altura del segundo triangulo de la figura redimensionada
if(h2(2)<0)
    h2=-h2;
end
a2=(b2(2)*h2(2))/2;%se calcula el area del segundo triangulo de la figura redimensionada
centroidey=(h1/3*a1+h2/3*a2)/(a1+a2);%se calcula el centroide en y de la figura redimensionada
centroidex=(b1*2/3*a1+b2/3*a2)/(a1+a2);%se calcula el centroide en x de la figura redimensionada
centrosegundografico=[centroidex(2) centroidey(2)]
