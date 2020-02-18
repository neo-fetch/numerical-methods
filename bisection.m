format long
count = 0;

f = @(x) cos(x)-x*exp(x)
%g = @(x) (-3*x^3-4*x^2-1)/4
i = -4
while(i<3)
    disp("f(i): "+f(i));
    i=i+1
end
x0 = 0
x1 = 1
xtemp = (x0+x1)/2
while(abs(f(xtemp))>0.001)
    if((f(xtemp)*f(x0))<0)
        x1 = xtemp
        xtemp = (x1+x0)/2
        disp("left half");
    end
    if(f(xtemp)*f(x1)<0)
        x0 = xtemp
        xtemp = (x1+x0)/2
        disp("right half");
    end
    disp(xtemp+" is current xtemp")
    disp("f(xtmp): "+f(xtemp))
end
