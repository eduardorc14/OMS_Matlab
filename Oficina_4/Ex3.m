clc;
syms y(t);
Dy = diff(y,t);                      % Derivada de y(t)
D2y = diff(y,t,2);
eq = D2y + 3*Dy + 2*y == 8*sin(5*t);                % Equação diferencial
cond = [y(0) == 0, Dy(0) == 0];      % Condição inicial

sol = dsolve(eq, cond);               % Solução geral de y(t)
disp('Solução da EDO:');
pretty(sol);