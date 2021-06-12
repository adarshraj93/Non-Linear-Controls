                            %%Computer Project 5
                            %%Coded by K S Adarsh Raj

clc,clear

%%Switch for PID Control Input
sw=1;

%%Define the global variables
global Kp Ki Kd

%%Define the Intial Values for the Global Variables
Kp=1;
Ki=1;
Kd=0.1;

%%Define the inital vector to pass for fminsearch
X0=[Kp;Ki;Kd];

%%Run the Optimisation Function
X=fminsearch('Project5_fmin',X0);

%%Run the Simulation with updated Optimal PID Control Gains
sim('Project5');

%%Plot Time Histories 

%Closed Loop Output Resposne 
figure(1),plot(time,X)
xlabel('time (sec)')
ylabel('X')
title('Closed Loop Output Response')
grid on
axis([0 2 0 1.4]);

%Control Effort Response
figure(2),plot(time,u);
xlabel('time (sec)');
ylabel('u, Controller Effort');
title('Control Effort Response');
grid on
axis([0 2 -20 120]);

%%Checking if the conditons are met for Closed Loop Output Response
s1=stepinfo(X,tout,'settling time',0.05)  
l1=lsiminfo(X,tout,'settling time',0.05)

%%Checking if the conditions are met for COntroller Effort
s2=stepinfo(u,tout,'settling time',0.05)  
l2=lsiminfo(u,tout,'settling time',0.05)

%%Switch for Unit Step Input
sw=0;

%%Run the Simulation
sim('Project5');

%%Plot the figures

%Plot for Open Loop System Response
figure(3),plot(time,X)
xlabel('time (sec)');
ylabel('X, output')
title('Open Loop Sytem Response')
grid on

%%Final Values For PID Gain
disp('The Final Value of Kp')
Kp
disp('The Final Value of Ki')
Ki
disp('The Final Value of Kd')
Kd

%%Final vValue of Cost Function
disp('The Final Value of Cost Function J = 0.1451')

%%Final Value of  Weighting Functions Q and R
disp('The Final value of Weighting Function Q= 1')
disp('The Final value of Weighting Function R= 0.0001')

