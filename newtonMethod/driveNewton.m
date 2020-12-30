clear all

syms x

f(x) = x^(1/3);
fprime(x) = 1/3*x^(-2/3);
maxIt = 10;
tol = 10^(-3);
p0 = .1;
[p] = newton(p0,f, fprime,maxIt,tol);
