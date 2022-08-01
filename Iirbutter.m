clc;
clear all;
close all;

% butter worth low pass filter
wp = 0.5; 
ws = 0.7;
rp = 1;
rs = 50;

[n,wn] = buttord(wp,ws,rp,rs);
[b,a] = butter(n,wn);
[h,w] = freqz(b,a,128);

subplot(2,2,3)
plot(abs(h));
xlabel('frequency');
ylabel('amplitude');
title('low pass butterworth filter response');

%butter worth high pass filter
wp = 0.7; 
ws = 0.5;
rp = 1;
rs = 30;

[n,wn] = buttord(wp,ws,rp,rs);
[b,a] = butter(n,wn,'high');
[h,w] = freqz(b,a,128);

subplot(2,2,4)
plot(abs(h));
xlabel('frequency');
ylabel('amplitude');
title('high pass butterworth filter response')