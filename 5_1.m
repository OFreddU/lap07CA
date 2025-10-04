
clear all, close all, clc

% Parametros dados
w = 2;         
dw = 0;        
v = 0.7;       
a = 0;         
r = 1.5;        

i = [1 0 0]';
j = [0 1 0]';
k = [0 0 1]';


% Vector posicion relativo
r_PA = r * i;   % Vector del punto P respecto a A (eje del tubo)

% Velocidad relativa
v_rel = v * i;  

% Aceleracion relativa
a_rel = a * i;

% Velocidad angular y su derivada
w_vec = w * k;      % Vector de velocidad angular
dw_vec = dw * k;    % Vector de aceleracion angular 

% Velocidad absoluta
v_abs = v_rel + cross(w_vec, r_PA);

% Aceleracion absoluta
a_abs = a_rel + cross(dw_vec, r_PA) + cross(w_vec, cross(w_vec, r_PA)) + 2 * cross(w_vec, v_rel);

v1=vecnorm(v_abs);
a1=vecnorm(a_abs);

% Mostrar resultados
disp('Velocidad Absoluta (m/s):');
disp(v1);

disp('Aceleracion Absoluta (m/s^2):');
disp(a1);
