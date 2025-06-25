% Definir Variáveis Simbólicas
syms x y theta v omega;

% Definir as Funções Não Lineares do Sistema (f_dot_x, f_dot_y, f_dot_theta)
f_dot_x = v * cos(theta);
f_dot_y = v * sin(theta);
f_dot_theta = omega;

f_nonlinear = [f_dot_x; f_dot_y; f_dot_theta]; % Vetor coluna das funções

states = [x; y; theta];   % Vetor coluna dos estados
inputs = [v; omega];     % Vetor coluna das entradas

% Definir o Ponto de Equilíbrio/Operação
% Usaremos variáveis simbólicas para o ponto de equilíbrio para obter a forma geral
syms x0 y0 theta0 v0 omega0;

% Calcular a Matriz Jacobiana A (df/dx) e avaliar no ponto de equilíbrio
A_sym = jacobian(f_nonlinear, states);
A_final = subs(A_sym, {x, y, theta, v, omega}, {x0, y0, theta0, v0, omega0});

disp('Matriz A linearizada:');
disp(A_final);

% Calcular a Matriz Jacobiana B (df/du) e avaliar no ponto de equilíbrio
B_sym = jacobian(f_nonlinear, inputs);
B_final = subs(B_sym, {x, y, theta, v, omega}, {x0, y0, theta0, v0, omega0});

disp('Matriz B linearizada:');
disp(B_final);

