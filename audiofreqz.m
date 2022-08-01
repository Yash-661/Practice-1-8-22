Nfft=16777216; %power of 2 and I put a huge number so there are many data points

f = linspace(0, Fs, Nfft);
X1 = abs(fft(y, Nfft));

plot(f(1:Nfft/2), X1(1:Nfft/2))
xlabel('Frequency'); 
ylabel('Power???');
title('FFT Spectrum');
