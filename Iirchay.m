clc;
clear all;
close all;

%%% chebyshev low pass filter;
wp = 0.5; 
ws = 0.7;
rp = 1;
rs = 50;
[n,wn] = cheb1ord(wp,ws,rp,rs);
[b,a] = cheby1(n,rp,wn);
[h,w] = freqz(b,a,128);

subplot(2,2,1)
plot(abs(h));
xlabel('frequency');
ylabel('amplitude');
title('low pass chebyshev filter response');

%%% chebyshev high pass filter
wp = 0.7; 
ws = 0.5;
rp = 1;
rs = 30;
[n,wn] = cheb1ord(wp,ws,rp,rs);
[b,a] = cheby1(n,rp,wn, 'high');
[h,w] = freqz(b,a,128);

subplot(2,2,2)
plot(abs(h));
xlabel('frequency');
ylabel('amplitude');