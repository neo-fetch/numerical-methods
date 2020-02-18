
xn = 0.6367;
fxn = 0;
i = 0;
while (abs(fxn - xn) > 0.000001)
    xn = fxn     
    fxn = sqrt(1-sin(xn))
    i = i+1;
end
disp(i)