ugain=1;
tf=10;
k1=1;k2=1;
x10=0;x20=2;
sim('Project3b')

figure(1),plot(tout,y,tout,yd,'--')
grid on
title('Y & Yd Vs Time')
xlabel('Time (s)')
ylabel('Y,Yd')
legend('Y','Yd')

figure(2),plot(tout,ydot,tout,yd_dot,'--')
grid on
title('Ydot & Yd-dot Vs Time')
xlabel('Time (s)')
ylabel('Ydot,Yd-dot')
legend('Ydot','Yd-dot')

figure(3),plot(tout,u)
grid on
title('Controller  Effort (U) Vs Time')
xlabel('Time (s)')
ylabel('U')
