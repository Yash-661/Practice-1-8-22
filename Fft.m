clc
clear all
close all

N = input('enetr N value');
x = input('enter input sequence with in square bracketes');
L = length(x);

if L > N
    disp('N should greater than L')
    return
end

if N > L
    x = [x, zeros(1,N-L)];
end

a = fft(x, N);
mag = abs(a);
pha = angle(a);

subplot(2, 1, 1);
stem(mag);
grid on
title('Magnitude Response');

subplot(2, 1, 2);
stem(pha);
grid on
title('phase Response');
