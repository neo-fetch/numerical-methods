format long
x = 1;
count = 0;

f = @(x) cos(x) - x*exp(x);
g = @(x) -sin(x)-exp(x)*(x+1);
h = @(x) -cos(x)-exp(x)*(x+2);



while abs((f(x)/g(x)))>(0.00001) 
    x = x-f(x)/g(x)
    count = count+1;
end
disp("f(x)= "+ f(x));
disp("tot "+count+" iterations");