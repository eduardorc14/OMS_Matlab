clear;
clc;
close all;

a =[1 2 3 4 5];
b =[5 1 2 3 4];

c = conv (a , b ); % convolucao no tempo

A = fft ( a );
B = fft ( b );
C = ifft ( A .* B ); % DFT inversa

