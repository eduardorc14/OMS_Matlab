clc 
clear 
close all

% Carregar variáveis
load exp2.mat;

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
K = abs(H1(1));

% 2. Calcular Mp e ωr
H_norm = abs(H1)/K;       % Magnitude normalizada
[Mp, idx] = max(H_norm);  % Encontrar pico de ressonância
wr = w(idx);              % Frequência de ressonância

% 3. Calcular ξ (zeta)
lnMp = log(Mp);
zeta = abs(lnMp) / sqrt(pi^2 + lnMp^2);

% 4. Calcular ωn
wn = wr / sqrt(1 - 2*zeta^2);

% Função de transferência
G_sys = tf(K*wn^2, [1 2*zeta*wn wn^2]);

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

% As respostas convergem para o mesmo valor final. O sistema simulado
% apresenta oscilação com maior amplitude.

