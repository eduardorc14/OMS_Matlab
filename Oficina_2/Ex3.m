clc,close
% Variáveis simbólicas
syms s m c k

% Definindo a função de transferência
G = (c*s + k)/(m*s^2 + c*s + k);

disp('Função de Transferência');
pretty(G);

% Parâmetros do sistema
m = 1; % massa m kg;
c = 2; % amortecedor c Ns/m;
k = 4; % mola k N/m;

% Criar a função de transferência
num = [c k];
den = [m c k];
G_s = tf(num, den);

% Criar o sinal senoidal
A = 2; % amplitude do sinal
f = 1; % Frequência em Hz
w = 2*pi*f; %Frequência angular
t = 0:0.01:10; % Vetor de tempo

y_t = A * sin(w * t);

x = lsim(G_s, y_t, t); % Simula a resposta do sistema

% Plotar o gráfico
figure;
plot(t, y_t, 'r--', 'LineWidth',1.5);
hold on;
plot(t,x, 'b', 'LineWidth',1.5);
grid on;
xlabel('Tempo (s)');
ylabel('Amplitude'); 
title('Resposta do Sistema a uma Entrada Senoidal');
legend('Exitação Senoidal','Resposta do Sistema');

