clear
clc
close all

n = 0:19;             % Vetor de tempo
x2 = zeros(size(n));  % Inicializa vetor com zeros
x2(6) = 0.9;          % Impulso em n=6 (índice 6 no MATLAB)

X2 = fft(x2);         % FFT do sinal
N = length(x2);
f = (0:N-1)*(2*pi/N); % Frequência em rad/s

% Plots
subplot(2,1,1)
stem(f, abs(X2))
xlabel('Frequência (rad/s)')
ylabel('|X1(\omega)|')
title('Magnitude da FFT de x2[n] = 0.9δ[n - 5]')

subplot(2,1,2)
stem(f, angle(X2))
xlabel('Frequência (rad/s)')
ylabel('Fase (rad)')
title('Fase da FFT de x1[n] = 0.9δ[n - 5]')


% A magnitude é constante em todas as frequências em 0.9.
% A fase é periódica, causada pelo deslocamento do impulso no tempo.