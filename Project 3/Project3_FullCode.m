                                    %%Computer Project 3
                                    %%Code by K S Adarsh Raj
        %% Part 1: Input State Linearisation for the non Linear System
clear,clc;
disp('Part 1: Input-State Linearisation for the non Linear System')
fprintf(1,'\n') %%gives one line space

%define the ugain, the initial condtions and simulation time
ugain=1;
tf=6;
x10=1;
x20=0;
x30=0;

%define the controller gains
k1=30;k2=40;k3=10;

%display the controller gains
disp('The feedback controller gain K1 =')
disp(k1)
disp('The feedback controller gain K2 =')
disp(k2)
disp('The feedback controller gain K3 =')
disp(k3)

%display the delta-t for the Simulink simulation effort
disp('The delta-t for the Simulink Simulation is')
disp('0.001')

%call the simulation
sim('Project3a')

%Plot the graphs
figure(1),plot(tout,x1) %%Plotting X1 vs Time
grid on
axis([0 6 -0.25 1.2])
title('X1 Vs Time')
xlabel('Time (s)')
ylabel('X1')

figure(2),plot(tout,x2) %%Plotting X2 vs Time
grid on
title('X2 Vs Time')
xlabel('Time (s)')
ylabel('X2')

figure(3),plot(tout,x3) %%Plotting X3 vs Time
grid on
title('X3 Vs Time')
xlabel('Time (s)')
ylabel('X3')

figure(4),plot(tout,u)  %%Plotting Controller Effort Vs Time
grid on
title('Controller Effort (U) Vs Time')
xlabel('Time (s)')
ylabel('U')

%% Checking if the condtions are met
s=stepinfo(x1,tout,'settling time',0.05)  
l=lsiminfo(x1,tout,'settling time',0.05)

disp('Checking if the condtions are met')
disp('_We can see from the command window that X1 is within the limits with max(x1)=1.0106 and min(x1)=-0.1954')
disp('_The peak time < 1 sec as observed from figure 1')
disp('_The 5% settling time is 2.1492 (< 3sec)')
fprintf(1,'\n')
%% We can see from the command window that X1 is within the limits with max(x1)=1.0106 and min(x1)=-0.1954
%%The peak time < 1 sec as observed from figure 1
%%The 5% settling time is 2.1492 (< 3sec)
        

   %%Part 2: Input-Output Feedback Linearisation for the Non-Linear System
disp('Part 2: Input-Output Feedback Linearisation for the Non-Linear System')
fprintf(1,'\n')
%define the ugain, the initial condtions and simulation time
ugain=1;
tf=10;
x10=0;
x20=2;

%define the controller gains
k1=1;
k2=1;

%display the controller gains
disp('The feedback controller gain K1 =')
disp(k1)
disp('The feedback controller gain K2 =')
disp(k2)

%display the relative order of the system
disp('The Relative Order of the System is')
disp('2')

%display the delta-t for the Simulink simulation effort
disp('The delta-t for the Simulink Simulation is')
disp('0.001')

%call the simulation
sim('Project3b')

%Plot the graphs
figure(5),plot(tout,y,tout,yd,'--')  %Plotting Y&Yd Vs Time 
grid on
title('Y & Yd Vs Time')
xlabel('Time (s)')
ylabel('Y,Yd')
legend('Y','Yd')

figure(6),plot(tout,ydot,tout,yd_dot,'--')  %Plotting Ydot&Yddot Vs Time
grid on
title('Ydot & Yd-dot Vs Time')
xlabel('Time (s)')
ylabel('Ydot,Yd-dot')
legend('Ydot','Yd-dot')

figure(7),plot(tout,u)  %Plotting Controller Effort (U) Vs Time
grid on
title('Controller  Effort (U) Vs Time')
xlabel('Time (s)')
ylabel('U')

