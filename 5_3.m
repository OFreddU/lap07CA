% Laboratorio 6 - Problema 5.3: Magnitud de la velocidad inercial de P
clear; clc;

% --- Datos del problema ---
theta_dot = 0.5;    % rad/s
phi_dot   = 0.7;    % rad/s
h = 0.3;            % m
r = 0.05;           % m
t = 5;              % s

% --- Ángulo del disco 1 en t = 5 s ---
theta = theta_dot * t;

% --- Vectores unitarios del sistema móvil (disco 1) ---
i1 = [cos(theta); sin(theta); 0];      % eje d1 (eje de rotación del disco 2)
j1 = [-sin(theta); cos(theta); 0];     % dirección radial del punto P en disco 2
k  = [0; 0; 1];

% --- Vector posición de P respecto al centro del disco 1 ---
% El disco 2 cuelga h metros abajo, y P está a r metros en dirección j1
r_P_O = -h * k + r * j1;

% --- Velocidades angulares ---
omega1 = theta_dot * k;   % rotación del disco 1 (respecto inercial)
omega2 = phi_dot * i1;    % rotación del disco 2 (respecto al disco 1)

% --- Velocidad absoluta de P (soporte asumido fijo: v_A = 0) ---
v_P = cross(omega1, r_P_O) + cross(omega2, r * j1);

% --- Magnitud de la velocidad (en m/s) ---
v_mag = norm(v_P);

% --- Mostrar resultado ---
fprintf('Magnitud de la velocidad inercial de P: %.6f m/s\n', v_mag);
