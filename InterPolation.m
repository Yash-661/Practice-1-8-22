clc;
clear;
close all;

N = 125;
n = 0:1:N-1;
x = sin(2*pi*n/15);
L = 2;

figure(1)
stem(n,x);
grid on;
xlabel('No.of.Samples');
ylabel('Amplitude');
title('Original Sequence');

x1 = [zeros(1,L*N)];
n1 = 1:1:L*N;
j = 1:L:L*N;
x1(j) = x;

figure(2)
stem(n1-1,x1);
grid on;
xlabel('No.of.Samples');
ylabel('Amplitude');
title('Upsampled Sequence');

a = 1;
b = fir1(5,0.5,'Low');
y = filter(b,a,x1);
figure(3)
stem(n1-1,y);
grid on;
xlabel('No.of.Samples');
ylabel('Amplitude');