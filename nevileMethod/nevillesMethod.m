function [p] = nevillesMethod(xr,n,x,Q)

%This code was found online at https://www.cs.uaf.edu/~bueler/nevM.html
%Couldnt get other version to run
for i = n:-1:1
   for j = 1:i
      Q(j) = (xr-x(j))*Q(j+1) - (xr-x(j+n+1-i))*Q(j);
      Q(j) = Q(j)/(x(j+n+1-i)-x(j));
   end
end

p = Q;
