clc;
syms y(t);
Dy = diff(y,t);                      % Derivada de y(t)
D2y = diff(y,t,2);
D3y = diff(y,t,3);
eq = D3y + 4*Dy  == t;                % Equação diferencial
cond = [y(0) == 0, Dy(0) == 0, D2y(0) == 1];      % Condição inicial

sol = dsolve(eq, cond);               % Solução geral de y(t)
disp('Solução da EDO:');
pretty(sol);