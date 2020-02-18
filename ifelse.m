a = input("Enter one side \n");
b = input("Enter another side \n");
c = input("Enter last side \n");

if ((a + b)>c)
    fprintf("sides of length %d,%d, & %d form a triange", a,b,c);
elseif ((a + b)<c)
    fprintf("sides of length %d,%d, & %d form a triange", a,b,c);
else 
    fprintf("sides of length %d,%d, & %d are weird", a,b,c);
end