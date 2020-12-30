clear all
format long
%interval
a = 0; b = 1;

maxIt = 17;
tol = 10^(-5);

fa = exp(a)- a^2+3*a-2;
fp = exp(p)- p^2+3*p-2;

if fa*fb >= 0 
    disp("no solution in this interval")
    return
end

for i = 1:maxIt
    p = 1/2*(a+b);
    fa = exp(a)- a^2+3*a-2;
    fp = exp(p)- p^2+3*p-2;
    if fa*fp < 0
        b = p;
    else
        a = p;
    end
end
    