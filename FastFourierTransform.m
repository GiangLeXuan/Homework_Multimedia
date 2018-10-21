% B4.Chuyen doi FFT cho file "Melody.wav" va ve pho tin hieu
N =length(giang);                  %so diem FFT 
transform = fft(y,N)/N;            %chuan hoa
magTransform = abs(transform);     %lay bien do cua tin hieu
faxis = linspace(-N/2,N/2,N);      %tao tin hieu
figure(1);
plot(faxis,fftshift(magTransform)); %ve pho fft
title('The Spectrum');              
xlabel('Frequency (Hz)')

   