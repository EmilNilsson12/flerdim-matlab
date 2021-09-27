clc
2. disp('Vi vill hitta alla lösningar till ekvationsystemet:')
3. disp('f(a1, a2)= d1*cos(a1) + d2*cos(a1 - a2) = p1')
4. disp('g(a1, a2)= d1*sin(a1) + d2*sin(a1 - a2) = p2')
5. disp(' ')
6.
7. format long
8. d1 = 5;
9. d2 = 6;
10. p1 = 10;
11. p2 = 4;
12.
13.
14. a0 = acos(4/5); b0 = a0/3;
15. for i = 1:15
16. f = d1*cos(a0) + d2*cos(a0 - b0) - p1;
17. g = d1*sin(a0) + d2*sin(a0 - b0) - p2;
18. fa = - d1*sin(a0) - d2*sin(a0 - b0);
19. fb = d2*sin(a0 - b0);
20. ga = d1*cos(a0) + d2*cos(a0 - b0);
21. gb = - d2*cos(a0 - b0);
22.
23. d = [a0 ; b0] - inv([fa fb; ga gb])*[f ; g];
24. a1 = d(1);
25. b1 = d(2);
26.
27. a0 = a1;
28. b0 = b1;
29. end
30. aGrad1 = round(180/pi*a1);
31. bGrad1 = round(180/pi*b1);
32.
33.
34. a0 = acos(4.5/5); b0 = -a0/3;
35. for i = 1:15
36. f = d1*cos(a0) + d2*cos(a0 - b0) - p1;
37. g = d1*sin(a0) + d2*sin(a0 - b0) - p2;
38. fa = - d1*sin(a0) - d2*sin(a0 - b0);
39. fb = d2*sin(a0 - b0);
40. ga = d1*cos(a0) + d2*cos(a0 - b0);
41. gb = - d2*cos(a0 - b0);
42.
43. d = [a0 ; b0] - inv([fa fb; ga gb])*[f ; g];
44. a1 = d(1);
45. b1 = d(2);
46.
47. a0 = a1;
48. b0 = b1;
49. end
50. aGrad2 = round(180/pi*a1);
51. bGrad2 = round(180/pi*b1);
52.
53. format short
54. % fprintf('Ena vinkelparet är: ?1= %d och ?2= %d', aGrad1, bGrad1)
55. % fprintf('\nDet andra vinkelparet är: ?1= %d och ?1= %d', aGrad2, bGrad2)
56.
57. vinkelpar1 = ['Ena vinkelparet är: a1= ',num2str(aGrad1),'° och a2= ', num2str(bGrad
1),'°.'];
58. disp(vinkelpar1)
59. vinkelpar2 = ['Det andra vinkelparet är: a1= ',num2str(aGrad2),'° och a2= ', num2str
(bGrad2),'°.'];
60. disp(vinkelpar2)