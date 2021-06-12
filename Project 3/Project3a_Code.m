clear,clc;
ugain=1;
tf=6;
x10=1;
x20=0;
x30=0;
k1=30;k2=40;k3=10;
sim('Project3a')

figure(1),plot(tout,x1) 
grid on
axis([0 6 -0.25 1.2])
title('X1 Vs Time')
xlabel('Time (s)')
ylabel('X1')

figure(2),plot(tout,x2)
grid on
title('X2 Vs Time')
xlabel('Time (s)')
ylabel('X2')

figure(3),plot(tout,x3)
grid on
title('X3 Vs Time')
xlabel('Time (s)')
ylabel('X3')

figure(4),plot(tout,u)
grid on
title('Controller Effort (U) Vs Time')
xlabel('Time (s)')
ylabel('U')

s=stepinfo(x1,tout,'settling time',0.05)
l=lsiminfo(x1,tout,'settling time',0.05)
