clc; 
% Parâmetros sistema criticamente amortecido
zeta = 1;   % coeficiente de amortecimento
wn = 2;     % frequência natural
x0 = 0;     % posição inicial nula

% Velocidades iniciais
x1 = 0.2;   
x2 = 0.12;
x3 = 0.04;

% Frequência amortecida
wd = wn * sqrt(1 - zeta^2);

% Vetor de tempo
t = linspace(0, 4, 1000);  % de 0 a 4 segundos, 1000 pontos

% Equação
x1 = exp(-wn*t) .* (x0 +(2*x0 + x1)*t);
x2 = exp(-wn*t) .* (x0 +(2*x0 + x2)*t);
x3 = exp(-wn*t) .* (x0 +(2*x0 + x3)*t);

% Gráfico
plot(t, x1, 'b', 'LineWidth', 2); hold on;
plot(t, x2, 'r', 'LineWidth', 2);  
plot(t, x3, 'k', 'LineWidth', 2);  
xlabel('Tempo (s)')
ylabel('x(t)')
title('Resposta Livre Criticamente Amortecida')
legend('$\dot{x}=0.2\,\mathrm{m/s}$', '$\dot{x}=0.12\,\mathrm{m/s}$', '$\dot{x}=0.04\,\mathrm{m/s}$', ...
       'Interpreter', 'latex', 'Location', 'northeast')

grid on

% O gráfico corresponde ao traçado na apostila.