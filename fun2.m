function [dx] = fun2( t, x)
%przyspieszenie ziemskie
g = 9.81;
%wymuszenie skokowe
u = 1;
%parametry pierwszej masy
k1 = 3;
b1 = 5;
m1 = 2;
%parametry drugiej masy
k2 = 3;
b2 = 6;
m2 = 3;
%parametry trzeciej masy
k3 = 4;
b3 = 7;
m3 = 1;
%parametry czwartej masy
k4 = 2;
b4 = 4;
m4 = 2;
%zamodelowanie równañ stanu
dx(1,1)=x(2);
dx(2,1)=(-k1/m1+k3/(2*m1))*x(1)+(-b1/m1+b3/(2*m1))*x(2)-k3/(2*m1)*x(3)+b3/(2*m1)*x(4)-k3/m1*x(5)-b3/m1*x(6)+u/m1;
dx(3,1)=x(4);
dx(4,1)=k3/(2*m2)*x(1)+b3/(2*m2)*x(2)+(-k3/(2*m2)-k2/m2)*x(3)+(-b2/m2-b3/(2*m2))*x(4)-k3/m2*x(5)-b3/m2*x(6);
dx(5,1)=x(6);
dx(6,1)=k3/(2*m3)*x(1)+b3/(2*m3)*x(2)-k3/(2*m3)*x(3)-b3/(2*m3)*x(4)+(-k3/m3-k4/m3)*x(5)+(-b3/m3-b4/m3)*x(6)+k4/m3*x(7)+b4/m3*x(8)+g;
dx(7,1)=x(8);
dx(8,1)=k4/m4*x(5)+b4/m4*x(6)-k4/m4*x(7)-b4/m4*x(8)+g;
end