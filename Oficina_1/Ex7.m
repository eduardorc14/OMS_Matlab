% Definição de parâmetros
t = linspace(-2, 2, 1000);
w = 2*pi;

f_t = -3*cos(w*t) + 4*sin(w*t);

% Cálculo da amplitude e fase para forma equivalente
A = sqrt((-3)^2 + 4^2);
phi = atan2(4, -3); % atan2 ajusta o quadrante corretamente
f_equiv = A * cos(w*t + phi);

% Gráfico
figure;
plot(t, f_t, 'b', 'LineWidth', 1.5);
hold on;
plot(t, f_equiv, 'r--', 'LineWidth',1.5);
hold off;

xlabel('Tempo (s)');
ylabel('Amplitude');
legend('f(t) = -3cos(w0t) + 4sen(w0t)');
grid on;