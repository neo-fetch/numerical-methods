n = input("Enter the number of terms: \n")
sum = 0;
for k = 1:n
    sum = sum + (-1)^k*(k/2^k);
end
disp("sum is: "+sum);