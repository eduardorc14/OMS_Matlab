syms x y; % Define x e y como variáveis simbólicas
f = x*y; % Define a função

x_bar = 6; % Ponto de operação para x
y_bar = 11; % Ponto de operação para y

% Expansão de Taylor em torno de (x_bar, y_bar) até a primeira ordem
% 'Order', 2 significa que ele inclui termos até (ordem-1), ou seja, ordem 1 para linearização.
% O 'Point' especifica o ponto de expansão.
taylor_series = taylor(f, [x y], 'ExpansionPoint', [x_bar y_bar], 'Order', 2);

disp('Expansão de Taylor de 1a ordem (linearização):');
disp(taylor_series);

% Assumindo que taylor_series é a expressão linearizada obtida acima
% Converta a expressão simbólica para uma função anônima para avaliação fácil
linearized_fcn = matlabFunction(taylor_series);

% Ponto onde queremos calcular o erro
x_test = 5;
y_test = 10;

% Valor real
z_real = x_test * y_test;

% Valor aproximado pela linearização
z_approx = linearized_fcn(x_test, y_test); % Note a ordem dos argumentos se for diferente no taylorseries

% Erro de aproximação
error_value = abs(z_real - z_approx);

disp(['Valor real em (5,10): ', num2str(z_real)]);
disp(['Valor aproximado em (5,10): ', num2str(z_approx)]);
disp(['Erro de aproximação: ', num2str(error_value)]);