clc 
clear 
close all

% Carregar variáveis
load exp1.mat;

N = length(time);             % Número de amostras
Ts = time(2) - time(1);       % Tempo de amostragem
w = 2*pi*(0:(N -1)) / (N*Ts); % frequência angular

% Calculando FFTs (normalizadas)
Y1 = fft(y) / N;
U1 = fft(u) / N;

% Função de transferência estimada
H1 = Y1 ./ U1;

% Restringe ao intervalo de Nyquist (metade do espectro)
nyq_idx = floor(N/2) + 1;
w_nyq = w(1:nyq_idx);
H1_nyq = H1(1:nyq_idx);

% Diagrama de Bode (apenas estimado)
figure
subplot(2,1,1)
semilogx(w_nyq, 20*log10(abs(H1_nyq)), 'r', 'LineWidth', 1.5)
ylabel('|G| [dB]')
title('Resposta em Frequência Estimada')
grid on

subplot(2,1,2)
semilogx(w_nyq, rad2deg(unwrap(angle(H1_nyq))), 'r', 'LineWidth', 1.5)
ylabel('\angle G [deg]')
xlabel('\omega [rad/s]')
grid on

% 1. Calcular ganho DC (K)
K = abs(H1(1));  % Magnitude na frequência zero

% 2. Encontrar frequência de canto (a)
%    Onde a magnitude é -3dB em relação ao DC
mag_dB = 20*log10(abs(H1));
idx_3dB = find(mag_dB <= mag_dB(1) - 3, 1);
a = w(idx_3dB);  % w = vetor de frequências

% Função de transferência
G_sys = tf(K*a, [1 a]);

y_sim = lsim(G_sys, u, time);

%Plotar respostas comparativas

figure
plot(time, y, 'b', 'LineWidth', 1.5)
hold on
plot(time, y_sim, 'r--', 'LineWidth', 1.5)
grid on
title('Comparação: Resposta Experimental vs Simulada')
xlabel('Tempo (s)')
ylabel('Saída')
legend('Experimental', 'Simulado', 'Location', 'best')

% As respostas convergem para o mesmo valor final.

