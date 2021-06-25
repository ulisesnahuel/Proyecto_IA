clc
entrada=[0 0 0;
0 0 1 ;
0 1 0 ;
0 1 1 ;
1 0 0 ;
1 0 1 ;
1 1 0 ;
1 1 1];
salida=[1 1 1 1 1 1 0;
0 1 1 0 0 0 0;
1 1 0 1 1 0 1;
1 1 1 1 0 0 1;
0 1 1 0 0 1 1;
1 0 1 1 0 1 1;
1 0 1 1 1 1 1;
1 1 1 0 0 0 0];
etha = 0.4; %factor de aprendizaje
bias=-1 + 2*rand(8,1);
w= -1 + 2*rand(3,7);
DW1 = 1; DW2 = 1;DW3=1;
n=0;
while (DW1~=0) && (DW2~=0) && (DW3~=0) && n<100000
%esta secuencia se ejecuta hasta que la variación de pesos sea nula
n = n+1;
for i = 1:8
    for j = 1:7
        y= hardlim(entrada(i,:)*w(:,j)+bias(j,1)); %heaviside -> función escalón
        err_salida(j) = (salida(i,j)-y);
        Dw1(j) = etha*entrada(i,1)*err_salida(j); %actualización de peso w1
        Dw2(j) = etha*entrada(i,2)*err_salida(j) ;%actualización de peso w2
        Dw3(j) =etha*entrada(i,3)*err_salida(j);%actualizacion de peso w3
    end
    DW1 = sum(Dw1);
    DW2 = sum(Dw2);
    DW3 = sum(Dw3);
    w(1,:) = w(1,:) + DW1;
    w(2,:) =w(2,:) + DW2;
    w(3,:) =w(3,:) + DW3;
end

end
sprintf(' Pesos:')
w
sprintf(' Bias:')
bias
sprintf(' Iteraciones = %g ',n)