k = 1;
l = input("Enter the upper limit: \n");
disp("the upper limit is: " + l);
while k<=l
    k = k*2;
    disp("K = "+k)
    if k>l
        disp(k+">"+l+"."+" loop terminated")
    end
end 