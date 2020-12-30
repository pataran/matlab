
function [p] = newton(p,f,fprime,maxIt,tol)

for i = 1:maxIt
    pNew = p - f(p)/fprime(p);
    pNew = double(pNew);
    if abs(p - pNew) < tol
        p = pNew;
        return;
    end
    
    if i == maxIt
        display("max num of iterations reached. No convergence");
    end
        
    else
        p = pNew;
    end
    
end 
