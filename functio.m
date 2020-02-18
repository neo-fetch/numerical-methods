format long
x = -1;
count = 0;

f = @(x) 3*x^3+4*x^2+4*x+1
while abs(x-f(x))>0.00001
    x = f(x)
    count = count+1;
end 
disp("tot "+count+" iterations");