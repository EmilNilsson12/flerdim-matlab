clear all
clc
disp('Bestäm globala min-värdet till följande funktion')
disp('f(x) = -e^(-x)*sin(4x) inom intervallet 0 =< x =< 3.')
disp(' ')
format long
x0 = 0.3;
 for i = 1:5

 df = exp(-x0)*(sin(4*x0)-4*cos(4*x0));
 df2 = exp(-x0)*(8*cos(4*x0)+15*sin(4*x0));
 x1 = x0 - df/df2;
 x0 = x1;
 end
 f = @(x) (-exp(-x).*sin(4.*x));
 x = x1;
 y = f(x1);

 punktensKoordinater = ['Punktens koordinater är : (',num2str(x),', ', num2str(y),')'
];
disp(punktensKoordinater)