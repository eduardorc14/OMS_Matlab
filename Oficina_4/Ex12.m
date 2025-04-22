clc; clear;

% Parâmetros do sistema superamortecido
zeta = 1.4;
wn = 4;

% Condições iniciais
x0 = 0;
dx_list = [0.2, 0.12, 0.04];  % velocidades iniciais
colors = ['b', 'r', 'k'];     % cores para os gráficos

% Raízes (devem ser negativas)
s1 = -wn*(zeta - sqrt(zeta^2 - 1));  % raiz menos negativa
s2 = -wn*(zeta + sqrt(zeta^2 - 1));  % raiz mais negativa

% Tempo
t = linspace(0, 5, 500);

% Plot
figure; hold on; grid on;
title('Resposta x(t) para diferentes velocidades iniciais');
xlabel('Tempo (s)');
ylabel('x(t) (m)');

for i = 1:length(dx_list)
    dx0 = dx_list(i);

    % Resolver simbolicamente
    syms c1 c2 ts
    x_sym = c1 * exp(s1*ts) + c2 * exp(s2*ts);  % ambos negativos
    dx_sym = diff(x_sym, ts);

    eq1 = subs(x_sym, ts, 0) == x0;
    eq2 = subs(dx_sym, ts, 0) == dx0;

    sol = solve([eq1, eq2], [c1, c2]);

    % Avaliação numérica
    c1_val = double(sol.c1);
    c2_val = double(sol.c2);
    xt = c1_val * exp(s1*t) + c2_val * exp(s2*t);

    plot(t, xt, 'Color', colors(i), 'LineWidth', 1.5, ...
         'DisplayName', ['$\dot{x}_0 = ', num2str(dx0), '\,\mathrm{m/s}$']);
end

legend('Interpreter', 'latex', 'Location', 'northeast');


% O gráfico corresponde ao traçado na apostila.