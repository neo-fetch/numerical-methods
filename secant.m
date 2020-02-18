format long
x = 1;
count = 0;

f = @(x) cos(x) - x*exp(x);
g = @(x) -sin(x)-exp(x)*(x+1);
h = @(x) -cos(x)-exp(x)*(x+2);
x0 = 0.1;
x1 = 1.2;
x2 = 0;
while abs(f(x2))>(0.00000001) 
    x2 = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0))
    x0 = x1;
    x1 = x2;
    count = count+1;
end
disp("f(x)= "+ f(x2));
disp("tot "+count+" iterations");