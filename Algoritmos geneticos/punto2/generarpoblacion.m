P01=randi([0,5555],100,1);
%calculo de la poblacion incial
pinicial=zeros(100,5);
pi=zeros(50,10);
P4=round(rand(100,1,'single'));
for i=1:100
    k=num2str(P01(i));
if(length(k)<4)
for j=1:(4-length(k))
    k=strcat('0',k);
end
end
k=strcat(num2str(P4(i)),k);
pinicial(i,:)=[str2num(k(1)) str2num(k(2)) str2num(k(3)) str2num(k(4)) str2num(k(5))];
end
aux=[1:5];
pi=[pinicial(1:50,:) pinicial(51:100,:)];
pmut=pi;
disp('poblacion incial : ')
pinicial
disp('parejas iniciales')
pmut