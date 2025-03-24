t = linspace(-2, 2, 1000); % Intervalo de tempo
x = cos(t).*sin(20*t);

% Gráfico
plot(t,x, 'b', 'LineWidth', 1.5);
xlabel('Tempo (s)');
ylabel('Amplitude');
