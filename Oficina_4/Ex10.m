% Parâmetros do sistema
zeta = 0.1;             % Fator de amortecimento
wn = 5;                 % Frequência natural (rad/s)
x0 = 0;                 % Deslocamento inicial (m)
dx0 = 0.2;            % Velocidade inicial (m/s)

% Frequência amortecida
wd = wn * sqrt(1 - zeta^2);

% Vetor de tempo
t = linspace(0, 8, 1000);  % de 0 a 5 segundos, 1000 pontos

% Solução da equação (16)
x = exp(-zeta * wn * t) .* ( ...
    x0 * cos(wd * t) + ...
    ((zeta * wn * x0 + dx0) / wd) * sin(wd * t) ...
);

% Envoltórias superior e inferior
A = abs((zeta * wn * x0 + dx0) / wd);  % Amplitude inicial estimada
env_sup =  A * exp(-zeta * wn * t);
env_inf = -A * exp(-zeta * wn * t);

% Gráfico
plot(t, x, 'b', 'LineWidth', 2); hold on;
plot(t, env_sup, 'r--', 'LineWidth', 1.5);  % Envoltória superior
plot(t, env_inf, 'r--', 'LineWidth', 1.5);  % Envoltória inferior
xlabel('Tempo (s)')
ylabel('x(t) [m]')
title('Resposta Livre Amortecida')
legend('x(t)', 'Location', 'northeast')
grid on

% O gráfico corresponde ao traçado na apostila.