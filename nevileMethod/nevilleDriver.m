clear all;
syms xr;

 x = [.6 .3 .8 1];
 Q = [-.07181250 .01375227 .22363362 .65809197];
[p] = nevillesMethod(0,3,x,Q);