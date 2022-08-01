clc;
clear; 
close all;

rp = input('enter Pass band Ripple'); 
rs = input('enter Stop band Ripple'); 
fp = input('enter Pass band Frequency'); 
fs = input('enter Stop band Frequency'); 
f = input('enter Sampling Frequency');

wp = 2*fp/f;
ws = 2*fs/f;

num = -20*log10(sqrt(rp*rs))-13; 
dem = 14.6*(fs-fp)/f;

n = ceil(num/dem);
n1 = n+1;  

if(rem(n,2) ~= 0)
    n1=n;
    n=n-1;
end

y=triang(n1);
disp('Triangular Window Filter Response'); 
b=fir1(n,wp,y);
[h,o]=freqz(b,1,256); 
m=20*log10(abs(h));

subplot(2,2,1); (n1);
plot(o/pi,m);
title('LPF');
ylabel('Gain in dB-->');
xlabel('(a)Normalized Frequency-->');
ylabel('Phase in Radians--->');