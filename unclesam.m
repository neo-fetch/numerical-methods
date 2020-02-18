display("Area Calculator")

a = input("enter the side1\n")
b = input("enter side2\n")
deg = input('enter the angle(deg) between the sides')
thetarad= pi/180*deg
area = (0.5)*(a)*(b)*sin(thetarad)
otherside = ((a)^2 + (b)^2 -2*cos(thetarad))^0.5