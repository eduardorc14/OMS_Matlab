% 1. Definir a variável simbólica e a função
syms x;
f = sin(x);

% 2. Escolher o ponto de operação
ponto_operacao = pi/4; % Exemplo: pi/4 (45 graus)

% 3. Obter a aproximação linear (série de Taylor de 1ª ordem)
% 'Order', 2 significa que incluirá termos até a 1ª ordem (linear)
f_linearizada_simbolica = taylor(f, x, 'ExpansionPoint', ponto_operacao, 'Order', 2);

disp('Função original f(x):');
disp(f);
disp(['Ponto de operação (x_barra): ', num2str(ponto_operacao)]);
disp('Função linearizada (simbólica):');
disp(f_linearizada_simbolica);


% Criar um vetor de valores x para o gráfico
x_vals = -2*pi:0.01:2*pi; % Um intervalo maior para visualizar bem

% Converter as funções simbólicas em funções numéricas para plotagem
f_original_num = matlabFunction(f);
f_linearizada_num = matlabFunction(f_linearizada_simbolica);

% Calcular os valores y para as funções
y_original = f_original_num(x_vals);
y_linearizada = f_linearizada_num(x_vals);

% 5. Mostrar as funções em gráfico
figure;
plot(x_vals, y_original, 'b', 'LineWidth', 2, 'DisplayName', 'f(x) = sin(x) (Original)');
hold on;
plot(x_vals, y_linearizada, 'r--', 'LineWidth', 2, 'DisplayName', ['Linearizada em x = ', num2str(ponto_operacao)]);
% Adicionar um marcador no ponto de operação
plot(ponto_operacao, f_original_num(ponto_operacao), 'ko', 'MarkerSize', 8, 'LineWidth', 2, 'DisplayName', 'Ponto de Operação');

grid on;
legend('Location', 'best');
xlabel('x');
ylabel('f(x)');
title('Aproximação Linear de f(x) = sin(x) via Série de Taylor');
xlim([-2*pi 2*pi]);
ylim([-1.5 1.5]); % Limites y típicos para a função seno

hold off;