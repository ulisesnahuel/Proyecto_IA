%GRUPO_IA Albarracin, Mendoza, Franco

M = zeros(6,7)
for i = 1:2:7
M(:,[i])= rand()
M(:,[i+1])= rand()*-1
end
