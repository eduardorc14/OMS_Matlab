syms y(t) x(t)
Dy = diff(y,t);           % Derivada de y(t)
eq = Dy + 5*y == x;       % Equação diferencial
cond = y(0) == 5;         % Condição inicial

sol = dsolve(eq, cond);   % Solução geral de y(t)
disp('Solução da EDO:');
pretty(sol);