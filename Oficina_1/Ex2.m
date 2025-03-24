% Parâmetros
A = 1;      % Amplitude inincial
f = 3;       % Frequência em Hz
w = 2 * pi * f; % Frequência Angular (rad/s)
alpha = log(2)/2; % Taxa de decaimento
t = linspace(-2, 2, 1000); % Intervalo de tempo

% Sinal da equação exponencialmente convergente
x = A * exp(-alpha * t) .* cos(w * t); 

% Grádico
figure;
plot(t, x, 'b', 'LineWidth', 1.5);
%hold on;
%plot(t, A * exp(-alpha * t), 'r--'); % Envoltória superior
%plot(t, -A * exp(-alpha * t), 'r--'); % Envoltória inferior
%hold off;

xlabel('Tempo (s)');
ylabel('Amplitude');
title('Senoide exponencialmente Convergente');
grid on;



