%% Parametry uk³adu
g = 9.81;
u = 1;
k1 = 3;
b1 = 5;
m1 = 1;
k2 = 3;
b2 = 6;
m2 = 3;
k3 = 4;
b3 = 7;
m3 = 1;
k4 = 2;
b4 = 4;
m4 = 2;
%% Czas symulacji
t = [ 0 : 0.01 : 20 ];
%Warunki pocz¹tkowe
x0 = [0;0;0;0;0;0;0;0];
%% Rozwiazanie
options = odeset('RelTol', 1e-3, 'AbsTol', 1e-3);
[t, x] = ode45(@fun2, t, x0, options);
%% Wykresy
figure(1)
plot(t, -x(:,1),t, x(:,3),t, x(:,5),t, x(:,7))
title('Wykres przemieszczeñ')
xlabel('Czas [s]')
ylabel('Przemieszczenie [m]')
legend('z1','z2','z3','z4')
figure(2)
plot(t, -x(:,2),t, x(:,4),t, x(:,6),t, x(:,8))
title('Wykres prêdkoœci')
xlabel('Czas [s]')
ylabel('Prêdkoœæ [m/s]')
legend('dz1','dz2','dz3','dz4')
%% Macierze stanu
A=[0,1,0,0,0,0,0,0;
    -k1/m1+k3/(2*m1),-b1/m1+b3/(2*m1), -k3/(2*m1),b3/(2*m1),-k3/m1,-b3/m1,0,0;
    0,0,0,1,0,0,0,0;
    k3/(2*m2),b3/(2*m2),-k3/(2*m2)-k2/m2,-b2/m2-b3/(2*m2),-k3/m2,-b3/m2,0,0;
    0,0,0,0,0,1,0,0;
    k3/(2*m3),b3/(2*m3),-k3/(2*m3),-b3/(2*m3),-k3/m3-k4/m3,-b3/m3-b4/m3,k4/m3,b4/m3;
    0,0,0,0,0,0,0,1;
    0,0,0,0,k4/m4,b3/m4,-k4/m4,-b4/m4]
B=[0,0;
    1,0;
    0,0;
    0,0;
    0,0;
    0,9.81;
    0,0;
    0,9.81]
C=[0,0,0,0,0,0,1,0]
D=[0,0]
%% Wymuszenie sinusoidalne
%transmitancja Y(s)/U(s)
[l,m]=ss2tf(A,B,C,D,1);
G=tf(l,m)
usin=0.3*sin(0.2*2*pi*t);
figure(3)
lsim(G,usin,t)
title('Wymuszenie sinusoidalne o A=0.3 m i f=0.2 Hz')
xlabel('Czas [s]')
ylabel('Amplituda [m]')

