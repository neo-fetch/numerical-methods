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
x2 = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0)) 
while(abs(f(x2))>0.001)
    if((f(x2)*f(x0))<0)
        x1 = x2
        x2 = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0))
        disp("left half");
    end
    if(f(x2)*f(x1)<0)
        x0 = x2
        x2 = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0))
        disp("right half");
    end
    disp(x2+" is current x")
    disp("f(xtmp): "+f(x2))
end
