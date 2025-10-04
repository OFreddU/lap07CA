clear all, close all, clc

v_tren = 2;          
a_tren = 0.1;        
omega = 4;           
alpha = 0;           
r = 0.25;        


i = [1 0 0]';  
j = [0 1 0]';  
k = [0 0 1]';  

% Vector posicion de P respecto al centro del disco
r_PA = r * i;


v_rel = [0 0 0]';
a_rel = [0 0 0]';

% Velocidad angular del disco
w_vec = omega * k;
dw_vec = alpha * k;

% Velocidad del centro del disco (tren)
v_A = v_tren * i;
a_A = a_tren * i;

% Velocidad absoluta
v_abs = v_A + v_rel + cross(w_vec, r_PA);

% Aceleración absoluta
a_abs = a_A + a_rel + cross(dw_vec, r_PA) + cross(w_vec, cross(w_vec, r_PA)) + 2 * cross(w_vec, v_rel); 

% Normas
v_total = norm(v_abs);
a_total = norm(a_abs);

% Mostrar resultados
disp('Velocidad Absoluta (vector):');
disp(v_abs);
disp(['|v| = ', num2str(v_total), ' m/s']);

disp('Aceleracion Absoluta (vector):');
disp(a_abs);
disp(['|a| = ', num2str(a_total), ' m/s^2']);
