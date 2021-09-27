clear all
2. clc
3. clf
4.
5. %Kod som kontrollerar att stationära punkter stämmer med handberäkningarna
6. x = linspace(-2,2,20);
7. y = linspace(-2,2,20);
8. [X,Y] = meshgrid(x,y);
9. Z = (2.*X.^3 - 3.*X.^2 - 6.*X.*Y.*(X - Y - 1));
10.
11. f1 = figure(1)
12. C = contour(X,Y,Z,2000)
13. colormap('jet')
14. %clabel(C)
15. grid on
16.
17. f2 = figure(2)
18. meshc(X,Y,Z)
19. colormap('jet')
20. grid off
21.
22. movegui(f1,[400,550])
23. movegui(f2,[950,550])
24.
25. %%
26. %X0 och Y0 väljs till godtyckligt nära punkter
27. X0 = -0.6;
28. Y0 = -0.9;
29. for i = 1:7
30. fx = 6.*(X0.^2 - X0 - 2.*X0.*Y0 + Y0.^2 + Y0);
31. fy = 6.*(-X0.^2 + X0 + 2.*X0.*Y0);
32. fxx = 6*(2.*X0 - 2.*Y0 - 1);
33. fxy = 6*(-2.*X0 + 2.*Y0 + 1);
34. fyy = 12.*X0;
35. d = ([X0 ; Y0] - inv([fxx fxy; fxy fyy])*[fx ; fy]);
36. X1 = d(1);
37. Y1 = d(2);
38. X0 = X1;
39. Y0 = Y1;
40. disp([X1 Y1])
41. end