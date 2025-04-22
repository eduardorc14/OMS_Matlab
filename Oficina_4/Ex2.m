clc;
syms y(t);
Dy = diff(y,t);           % Derivada de y(t)
D2y = diff(y,t,2);
eq = D2y + 2*Dy == 0;      % Equação diferencial
cond = [y(0) == 1, Dy(0) == 4];      % Condição inicial

sol = dsolve(eq, cond);   % Solução geral de y(t)
disp('Solução da EDO:');
pretty(sol);