clear all;
%-----------------Patrones-----------
%Carga de patrones de los numeros desde un plantilla excel.
%Creacion de matrices
dos = xlsread('patrones','Entrenamiento','A1:G11');
cuatro = xlsread('patrones','Entrenamiento','J1:P11');
seis = xlsread('patrones','Entrenamiento','S1:Y11');
ocho = xlsread('patrones','Entrenamiento','AA1:AH11');
cero = xlsread('patrones','Entrenamiento','AK1:AQ11');
seisvar1=xlsread('patrones','variante_6','A1:G11');
seisvar2=xlsread('patrones','variante_6','J1:P11');
seisvar3=xlsread('patrones','variante_6','S1:Y11');
ochovar1=xlsread('patrones','variante_8','A1:G11');
ochovar2=xlsread('patrones','variante_8','J1:P11');
ochovar3=xlsread('patrones','variante_8','S1:Y11');
%Creacion de los vectores
vector_dos = reshape(dos,1,77);
vector_cuatro = reshape(cuatro,1,77);
vector_seis = reshape(seis,1,77);
vector_ocho = reshape(ocho,1,77);
vector_cero = reshape(cero,1,77);
vector_seis1 = reshape(seisvar1,1,77);
vector_seis2 = reshape(seisvar2,1,77);
vector_seis3 = reshape(seisvar3,1,77);
vector_ocho1 = reshape(ochovar1,1,77);
vector_ocho2 = reshape(ochovar2,1,77);
vector_ocho3 = reshape(ochovar3,1,77);

%T Patrones a grabar
T = [vector_cero;vector_dos;vector_cuatro;vector_seis;vector_ocho]';

%comprobar que la red es estable
Ai = T ;
nethop = newhop(T);
[Y pf Af] = sim (nethop,5,[],Ai);

%Varientes de digitos 6 y 8
S1 = sim (nethop,{1 20},{},vector_seis1');
S2 = sim (nethop,{1 20},{},vector_seis2');
S3 = sim (nethop,{1 20},{},vector_seis3');
H1 = sim (nethop,{1 20},{},vector_ocho1');
H2 = sim (nethop,{1 20},{},vector_ocho2');
H3 = sim (nethop,{1 20},{},vector_ocho3');

salidaseis1=reshape(S1{end},[11 7]);
salidaseis2=reshape(S2{end},[11 7]);
salidaseis3=reshape(S3{end},[11 7]);
salidaocho1=reshape(H1{end},[11 7]);
salidaocho2=reshape(H2{end},[11 7]);
salidaocho3=reshape(H3{end},[11 7]);

xlswrite('salida.xlsx',salidaseis1,'A1:G11');
xlswrite('salida.xlsx',salidaseis2,'J1:P11');
xlswrite('salida.xlsx',salidaseis3,'S1:Y11');
xlswrite('salida.xlsx',salidaocho1,'A15:G25');
xlswrite('salida.xlsx',salidaocho2,'J15:P25');
xlswrite('salida.xlsx',salidaocho3,'S15:Y25');
