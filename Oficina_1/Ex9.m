% Matriz simbolica
syms a b c d;
M = [a b; c d];

% Cálculo do dererminante
det_M = det(M);

% Cálculo da inversa
inv_M = inv(M);

% Cálculo do traço
trace_M = trace(M);

% Impressão dos valores
disp('Determinate da Matriz:');
disp(det_M);

disp('Inversa da Matriz:');
disp(inv_M);

disp('Traço da Matriz:');
disp(trace_M);



