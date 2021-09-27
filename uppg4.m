clear all
clc
clf
%Kod som kontrollerar att stationära punkter stämmer med handberäkningarna
x = linspace(-2,2,20);
y = linspace(-2,2,20);
[X,Y] = meshgrid(x,y);
Z = (2.*X.^3 - 3.*X.^2 - 6.*X.*Y.*(X - Y - 1));

 f1 = figure(1)
 C = contour(X,Y,Z,2000)
 colormap('jet')
 %clabel(C)
 grid on

 f2 = figure(2)
 meshc(X,Y,Z)
 colormap('jet')
 grid off

 movegui(f1,[400,550])
 movegui(f2,[950,550])

 %%
 %X0 och Y0 väljs till godtyckligt nära punkter
 X0 = -0.6;
 Y0 = -0.9;
 for i = 1:7
 fx = 6.*(X0.^2 - X0 - 2.*X0.*Y0 + Y0.^2 + Y0);
 fy = 6.*(-X0.^2 + X0 + 2.*X0.*Y0);
 fxx = 6*(2.*X0 - 2.*Y0 - 1);
 fxy = 6*(-2.*X0 + 2.*Y0 + 1);
 fyy = 12.*X0;
 d = ([X0 ; Y0] - inv([fxx fxy; fxy fyy])*[fx ; fy]);
 X1 = d(1);
 Y1 = d(2);
 X0 = X1;
 Y0 = Y1;
 disp([X1 Y1])
 end