clear all
clc
disp('Lös följande ekvation mha Newton-Raphsons metod')
disp('f(x)= x - cos(x) = 0')
format long
x0 = 1;
for i = 1:6
f = x0 - cos(x0);
 df = 1 + sin(x0);
 x1 = x0 - f/df;
 x0 = x1;
 disp(x1)
 end

 %tol = 1e-12;
 %resultat = abs(x1 - cos(x1)) < tol