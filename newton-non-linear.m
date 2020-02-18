syms x y
format long
f = @(x,y) y*cos(x*y) + 1;
g = @(x,y) sin(x*y) + x - y;

x0 = 1;
y0 = 2;

%fx = diff(f,x)
%fy = diff(f,y)

%gx = diff(g,x)
%gy = diff(g,y)

J = [jacobian([y*cos(x*y) + 1,sin(x*y) + x - y],[x,y])]
i = 1;
Jac = [0 0 ; 0 0];
Xn = [1;2]
Fx = [y*cos(x*y) + 1;sin(x*y) + x - y]
Func = [0;0];
Xn1 = [2;1];
while (abs(Xn(1,1) - Xn1(1,1))>0.001)
    Func(1,1) = subs(Fx(1,1),[x,y],[Xn(1,1),Xn(2,1)])
    Func(2,1) = subs(Fx(2,1),[x,y],[Xn(1,1),Xn(2,1)])
    while i<3
        j = 1;
        while j<3
            Jac(i,j) = subs(J(i,j), [x,y], [Xn(1,1),Xn(2,1)])
            j = j+1;
        end
        i = i+1;
    end
    Xn1 = Xn;
    Xn = Xn - (Jac^-1)*Func
    
    
end
