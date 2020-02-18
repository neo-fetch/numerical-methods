format long
x = -1;
count = 0;

f = @(x) 3*x^3+4*x^2+4*x+1
g = @(x) (-3*x^3-4*x^2-1)/4
while abs(g(x)- x)>(0.0000001) 
    x = g(x)
    count = count+1;
end
disp("f(x)= "+ f(x));
disp("tot "+count+" iterations");