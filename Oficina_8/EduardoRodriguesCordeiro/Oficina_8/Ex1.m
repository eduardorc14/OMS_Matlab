clc
clear
close all

n = 0:19;             % Vetor de tempo
x1 = zeros(size(n));  % Inicializa vetor com zeros
x1(1) = 0.9;          % Impulso em n=0 (índice 1 no MATLAB)

X1 = fft(x1);         % FFT do sinal
N = length(x1);
f = (0:N-1)*(2*pi/N); % Frequência em rad/s

% Plots
subplot(2,1,1)
stem(f, abs(X1))
xlabel('Frequência (rad/s)')
ylabel('|X1(\omega)|')
title('Magnitude da FFT de x1[n] = 0.9δ[n]')

subplot(2,1,2)
stem(f, angle(X1))
xlabel('Frequência (rad/s)')
ylabel('Fase (rad)')
title('Fase da FFT de x1[n] = 0.9δ[n]')


% A magnitude é constante em todas as frequências em 0.9.
% E a fase é zero.