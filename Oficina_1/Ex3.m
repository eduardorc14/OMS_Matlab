%Representação das funções
x1 = real(2 * exp((-1 + 1j*2*pi)*t)); 
x2 = imag(3 - exp((1 - 1j*2*pi)*t));
x3 = 3 - imag(exp((1 - 1j*2*pi)*t));

t = linspace(-2, 2, 1000); % Intervalo de tempo

% Gráficos
figure;
plot(t, x1, 'b', 'LineWidth', 1.5);
hold on;
plot(t, x2, 'r', 'LineWidth', 1.5);
hold on;
plot(t, x3, 'g', 'LineWidth', 1.5);
hold off;

% definindo legenda
legend('x_1(t) = Re(2e^{(-1+j2\pi)t})', ...
       'x_2(t) = Im(3 - e^{(1-j2\pi)t})', ...
       'x_3(t) = 3 - Im(e^{(1-j2\pi)t})');

% Configuração dos eixos e título
xlabel('Tempo (s)');
ylabel('Amplitude');
grid on;