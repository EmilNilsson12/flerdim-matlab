clc
disp('Vi vill hitta alla lösningar till ekvationsystemet:')
disp('f(a1, a2)= d1*cos(a1) + d2*cos(a1 - a2) = p1')
disp('g(a1, a2)= d1*sin(a1) + d2*sin(a1 - a2) = p2')
disp(' ')
format long
d1 = 5;
d2 = 6;
 p1 = 10;
 p2 = 4;


 a0 = acos(4/5); b0 = a0/3;
 for i = 1:15
 f = d1*cos(a0) + d2*cos(a0 - b0) - p1;
 g = d1*sin(a0) + d2*sin(a0 - b0) - p2;
 fa = - d1*sin(a0) - d2*sin(a0 - b0);
 fb = d2*sin(a0 - b0);
 ga = d1*cos(a0) + d2*cos(a0 - b0);
 gb = - d2*cos(a0 - b0);

 d = [a0 ; b0] - inv([fa fb; ga gb])*[f ; g];
 a1 = d(1);
 b1 = d(2);

 a0 = a1;
 b0 = b1;
 end
 aGrad1 = round(180/pi*a1);
 bGrad1 = round(180/pi*b1);


 a0 = acos(4.5/5); b0 = -a0/3;
 for i = 1:15
 f = d1*cos(a0) + d2*cos(a0 - b0) - p1;
 g = d1*sin(a0) + d2*sin(a0 - b0) - p2;
 fa = - d1*sin(a0) - d2*sin(a0 - b0);
 fb = d2*sin(a0 - b0);
 ga = d1*cos(a0) + d2*cos(a0 - b0);
 gb = - d2*cos(a0 - b0);

 d = [a0 ; b0] - inv([fa fb; ga gb])*[f ; g];
 a1 = d(1);
 b1 = d(2);

 a0 = a1;
 b0 = b1;
 end
 aGrad2 = round(180/pi*a1);
 bGrad2 = round(180/pi*b1);

 format short
 % fprintf('Ena vinkelparet är: ?1= %d och ?2= %d', aGrad1, bGrad1)
 % fprintf('\nDet andra vinkelparet är: ?1= %d och ?1= %d', aGrad2, bGrad2)

 vinkelpar1 = ['Ena vinkelparet är: a1= ',num2str(aGrad1),'° och a2= ', num2str(bGrad
1),'°.'];
disp(vinkelpar1)
vinkelpar2 = ['Det andra vinkelparet är: a1= ',num2str(aGrad2),'° och a2= ', num2str
(bGrad2),'°.'];
disp(vinkelpar2)