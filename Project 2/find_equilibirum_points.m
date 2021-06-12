function J= find_equilibirum_points(z)
%map the variables
xb1=z(1);
xb2=z(2);

%define the function
xb1dot=(xb1*xb1*xb1)+(xb1*xb2*xb2)-(4*xb1)+xb2;
xb2dot=(xb2*xb2*xb2)+(xb2*xb2*xb2)-(4*xb2)-xb1;

%define the cost function
J=(xb1dot*xb1dot)+ (1000*xb2dot*xb2dot)
end
