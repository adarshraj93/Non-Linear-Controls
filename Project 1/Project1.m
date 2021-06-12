                     %% Problem 1 
%%Phase Plane Portrait and equlibirum points of a simple pendulum
              %Equilibrium Point at 0
%define the 1st intial conditions (First Concentric circle at 0)
x0=0;
x_dot0=0.5;
%call the simulation
sim('Project1_1')
%save the data
x1=The;     
x_dot1=The_dot;
%define the 2nd intial conditions (Second Concentric cirlce at 0)
x0=0;
x_dot0=1;
%call the simulation
sim('Project1_1')
%save the data
x2=The;     
x_dot2=The_dot;
%define the 3rd intial conditions (Third Concentric circle at 0)
x0=0;
x_dot0=1.5;
%call the simulation
sim('Project1_1')
%save the data
x3=The;     
x_dot3=The_dot;

               %Equilibrium Point at 6.28
%define the 4th intial conditions (First Concentric circle at 6.28)
x0=6.28;
x_dot0=0.5;
%call the simulation
sim('Project1_1')
%save the data
x4=The;     
x_dot4=The_dot;
%define the 5th intial conditions (Second Concentric circle at 6.28)
x0=6.28;
x_dot0=1;
%call the simulation
sim('Project1_1')
%save the data
x5=The;     
x_dot5=The_dot;
%define the 6th intial conditions (Third Concentric circle at 6.28)
x0=6.28;
x_dot0=1.5;
%call the simulation
sim('Project1_1')
%save the data
x6=The;     
x_dot6=The_dot;

               %Equilibrium Point at -6.28
%define the 7th intial conditions (First Concentric circle at -6.28)
x0=-6.28;
x_dot0=0.5;
%call the simulation
sim('Project1_1')
%save the data
x7=The;     
x_dot7=The_dot;
%define the 8th intial conditions (Second Concentric circle at -6.5)
x0=-6.28;
x_dot0=1;
%call the simulation
sim('Project1_1')
%save the data
x8=The;     
x_dot8=The_dot;
%define the 9th intial conditions (Third Concentric circle at -6.5)
x0=-6.28;
x_dot0=1.5;
%call the simulation
sim('Project1_1')
%save the data
x9=The;     
x_dot9=The_dot;

                %Equilibrium Points at 3.14 & 9.4248
%define the 10th intial conditions (First Right curve)
x0=3.145;
x_dot0=0;
%call the simulation
sim('Project1_1')
%save the data
x10=The;     
x_dot10=The_dot;

                %Equilibrium Points at -9.4248 & -3.14  
%define the 11th intial conditions (First Left curve)
x0=-3.145;
x_dot0=0;
%call the simulation
sim('Project1_1')
%save the data
x11=The;     
x_dot11=The_dot;

               %Equilibrium Points at -3.14 & 3.14
%define the 12th intial conditions (First Centre Curve)
x0=3.14;
x_dot0=0;
%call the simulation
sim('Project1_1')
%save the data
x12=The;     
x_dot12=The_dot;

               %Equilibrium Points at 9.4248 & 12.56
%define the 13th intial conditions (Second Right curve)
x0=9.4248;
x_dot0=0;
%call the simulation
sim('Project1_1')
%save the data
x13=The;     
x_dot13=The_dot;

               %Equilibrium Points at -12.56 & -9.4248 
%define the 14th intial conditions (Second left curve)
x0=-9.4248;
x_dot0=0;
%call the simulation
sim('Project1_1')
%save the data
x14=The;     
x_dot14=The_dot;

               %Upper Wave Trajectories
%define the 15th intial conditions (First Top Wave)
x0=-10;
x_dot0=1;
%call the simulation
sim('Project1_1')
%save the data
x15=The;     
x_dot15=The_dot;

%define the 16th intial conditions (Second Top Wave)
x0=-10;
x_dot0=2;
%call the simulation
sim('Project1_1')
%save the data
x16=The;     
x_dot16=The_dot;
%define the 17th intial conditions (Third Top Wave)
x0=-10;
x_dot0=3;
%call the simulation
sim('Project1_1')
%save the data
x17=The;     
x_dot17=The_dot;

                %Bottom Wave Trajectories
%define the 18th intial conditions (First Bottom Wave)
x0=10;
x_dot0=-1;
%call the simulation
sim('Project1_1')
%save the data
x18=The;     
x_dot18=The_dot;

%define the 19th intial conditions (Second Bottom Wave)
x0=10;
x_dot0=-2;
%call the simulation
sim('Project1_1')
%save the data
x19=The;     
x_dot19=The_dot;

%define the 20th intial conditions (Third Bottom Wave)
x0=10;
x_dot0=-3;
%call the simulation
sim('Project1_1')
%save the data
x20=The;     
x_dot20=The_dot;

             %Plot the Phase Plane Portrait
figure(1),plot(x1,x_dot1,x2,x_dot2,x3,x_dot3,x4,x_dot4,x5,x_dot5,x6,x_dot6,x7,x_dot7,x8,x_dot8,x9,x_dot9,x10,x_dot10,x11,x_dot11,x12,x_dot12,x13,x_dot13,x14,x_dot14,x15,x_dot15,x16,x_dot16,x17,x_dot17,x18,x_dot18,x19,x_dot19,x20,x_dot20)
grid on
axis([-10 10 -4 4]);
title('Phase Portrait of a Non Linear System (Simple Pendulum),Thetadot Vs Theta');
xlabel('Theta'),ylabel('ThetaDot');


                        %%Problem 2
%%Part A, Phase Plane Plot of the System           
              
              %First Diagonal Line           
%define the 1st inital conditions (bottom diagonal line)
x_dot0=-10;
x0=5;
%run the simualtion
sim('Project1_2')
%save the data
x1=x;
x_dot1=x_dot;

%define the 2nd inital conditions (Upper diagonal line)
x_dot0=10;
x0=-5;
%run the simualtion
sim('Project1_2')
%save the data
x2=x;
x_dot2=x_dot;


               %Curves in the Upper Left Quadrant
%define the 3rd inital conditions (Upper left 1st curve)
x_dot0=10;
x0=-6;
%run the simualtion
sim('Project1_2')
%save the data
x3=x;
x_dot3=x_dot;

%define the 4th inital conditions (Upper left 2nd curve)
x_dot0=10;
x0=-7;
%run the simualtion
sim('Project1_2')
%save the data
x4=x;
x_dot4=x_dot;

%define the 5th inital conditions (Upper left 3rd curve)
x_dot0=10;
x0=-8;
%run the simualtion
sim('Project1_2')
%save the data
x5=x;
x_dot5=x_dot;

%define the 6th inital conditions (Upper left 4th curve)
x_dot0=10;
x0=-9;
%run the simualtion
sim('Project1_2')
%save the data
x6=x;
x_dot6=x_dot;

%define the 7th inital conditions (Upper left 5th curve)
x_dot0=10;
x0=-10;
%run the simualtion
sim('Project1_2')
%save the data
x7=x;
x_dot7=x_dot;


               %Curves in the Bottom Left Quadrant
%define the 8th inital conditions (bottom left 1st curve)
x_dot0=-10;
x0=6;
%run the simualtion
sim('Project1_2')
%save the data
x8=x;
x_dot8=x_dot;

%define the 9th inital conditions (bottom left 2nd curve)
x_dot0=-10;
x0=7;
%run the simualtion
sim('Project1_2')
%save the data
x9=x;
x_dot9=x_dot;

%define the 10th inital conditions (bottom left 3rd curve)
x_dot0=-10;
x0=8;
%run the simualtion
sim('Project1_2')
%save the data
x10=x;
x_dot10=x_dot;

%define the 11th inital conditions (bottom left 4th curve)
x_dot0=-10;
x0=9;
%run the simualtion
sim('Project1_2')
%save the data
x11=x;
x_dot11=x_dot;

%define the 12th inital conditions (bottom left 5th curve)
x_dot0=-10;
x0=10;
%run the simualtion
sim('Project1_2')
%save the data
x12=x;
x_dot12=x_dot;


               %Curves in the Top Right Quadrant
%define the 13th inital conditions (Top right 1st curve)
x_dot0=10;
x0=-4;
%run the simualtion
sim('Project1_2')
%save the data
x13=x;
x_dot13=x_dot;

%define the 14th inital conditions (Top right 2nd curve)
x_dot0=10;
x0=-2.5;
%run the simualtion
sim('Project1_2')
%save the data
x14=x;
x_dot14=x_dot;

%define the 15th inital conditions (Top right 3rd curve)
x_dot0=10;
x0=-1;
%run the simualtion
sim('Project1_2')
%save the data
x15=x;
x_dot15=x_dot;


              %Curves in the Bottom Right Quadrant
%define the 16th inital conditions (Bottom Right 1st curve)
x_dot0=-10;
x0=4;
%run the simualtion
sim('Project1_2')
%save the data
x16=x;
x_dot16=x_dot;

%define the 17th inital conditions (Bottom Right 2nd curve)
x_dot0=-10;
x0=2.5;
%run the simualtion
sim('Project1_2')
%save the data
x17=x;
x_dot17=x_dot;

%define the 18th inital conditions (Bottom Right 3rd curve)
x_dot0=-10;
x0=1;
%run the simualtion
sim('Project1_2')
%save the data
x18=x;
x_dot18=x_dot;


                %Second Diagonal Line
%define the 19th inital conditions (right diagonal line)
x_dot0=1;
x0=1;
%run the simualtion
sim('Project1_2')
%save the data
x19=x;
x_dot19=x_dot;

%define the 20th inital conditions (right diagonal line)
x_dot0=0.01;
x0=0.01;
%run the simualtion
sim('Project1_2')
%save the data
x20=x;
x_dot20=x_dot;

%define the 21th inital conditions (left diagonal line)
x_dot0=-1;
x0=-1;
%run the simualtion
sim('Project1_2')
%save the data
x21=x;
x_dot21=x_dot;

%define the 22nd inital conditions (left diagonal line)
x_dot0=-0.01;
x0=-0.01;
%run the simualtion
sim('Project1_2')
%save the data
x22=x;
x_dot22=x_dot;


                  %Plot the Phase Plane Portrait
figure(2),plot(x1,x_dot1,x2,x_dot2,x3,x_dot3,x4,x_dot4,x5,x_dot5,x6,x_dot6,x7,x_dot7,x8,x_dot8,x9,x_dot9,x10,x_dot10,x11,x_dot11,x12,x_dot12,x13,x_dot13,x14,x_dot14,x15,x_dot15,x16,x_dot16,x17,x_dot17,x18,x_dot18,x19,x_dot19,x20,x_dot20,x21,x_dot21,x22,x_dot22)
grid on
axis([-10 10 -10 10])
title('Phase Portrait of Xdotdot+Xdot-2*X=0,Xdot Vs X');
xlabel('X'),ylabel('Xdot');


          %%Part C, Comparing the numerical solution and the Closed-form Exact Solution 

%Define the initial conditions
x0=1;
x_dot0=-2;
%call the simulation
sim('Project1_2')
%save the data for the given inital conditions
xc=x;
xc_dot=x_dot;

%define the closed form exact solution obtained by hand calculations
y=exp(-2*tout);

%plot the closed form exact solution and numerical solution
figure(3), plot(tout,y,tout,xc)
grid on;
title('Closed Form solution Vs Numerical Solution');
xlabel('Time(s)'),ylabel('X');
legend('Exact Solution','Numerical Solution')

%Plot the closed form exact solution
figure(4), plot(tout,y)
grid on;
title('Closed Form solution');
xlabel('Time(s)'),ylabel('X');


                     %%Part D, Is the Sytsem Stable for the above IC's

%Phase Plane Portrait for the given condition for the Numerical Solution
figure(5), plot(xc,xc_dot)
title('Phase Plane Portrait for the Numerical Solution,Part C');
xlabel('Time(s)'),ylabel('X');

