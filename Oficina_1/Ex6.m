% Intervalo de tempo
t = linspace(-2, 2, 1000);

% Funções
x1 = cos(t).*sin(20*t);
x2 = cos(t);
x3 = sin(20*t);

% Gráficos
figure
plot(t, x1, 'b', 'LineWidth', 1.5);
hold on;
plot(t, x2, 'r', 'LineWidth', 1.5);
hold on;
plot(t, x3, 'g', 'LineWidth', 1.5);
hold off;

% definindo legenda
legend('x_1(t) = cost(t)sen(20t)', ...
       'x_2(t) = cos(t)', ...
       'x_3(t) = sen(20t)');

xlabel('Tempo (s)');
ylabel('Amplitude ');
grid on;