theta_dot = 0.5;
phi_dot = 0.7;
h = 0.3;
r = 0.05;
t = 5;

theta = theta_dot * t;
i1 = [cos(theta); sin(theta); 0];
j1 = [-sin(theta); cos(theta); 0];
k = [0;0;1];

r_P_rel = -h*k + r*j1;
omega1 = theta_dot * k;
omega2 = phi_dot * i1;

vP = cross(omega1, r_P_rel) + cross(omega2, r*j1);

disp('5.3 Velocidad inercial de P:'); disp(vP')
