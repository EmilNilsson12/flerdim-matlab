clear all
2. clc
3. disp('Bestäm globala min-värdet till följande funktion')
4. disp('f(x) = -e^(-x)*sin(4x) inom intervallet 0 =< x =< 3.')
5. disp(' ')
6.
7.
8. format long
9. x0 = 0.3;
10. for i = 1:5
11.
12. df = exp(-x0)*(sin(4*x0)-4*cos(4*x0));
13. df2 = exp(-x0)*(8*cos(4*x0)+15*sin(4*x0));
14. x1 = x0 - df/df2;
15. x0 = x1;
16. end
17. f = @(x) (-exp(-x).*sin(4.*x));
18. x = x1;
19. y = f(x1);
20.
21. punktensKoordinater = ['Punktens koordinater är : (',num2str(x),', ', num2str(y),')'
];
22. disp(punktensKoordinater)