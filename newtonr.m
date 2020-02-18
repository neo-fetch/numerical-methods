format long
x = 1;
count = 0;

f = @(x) x^3-x^2-1;
g = @(x) 3*x^2-2*x;
h = @(x) 6*x-2;

while abs((f(x)/g(x)))>(0.00001) 
    x = x-f(x)/g(x)
    count = count+1;
end
disp("f(x)= "+ f(x));
disp("tot "+count+" iterations");