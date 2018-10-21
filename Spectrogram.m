%B4: Tao va ve spectogram cho tin hieu am thanh choi nhac "melody.wav"
[data fs] = audioread('melody.wav')
figure(2);
win = 128; % do rong khung cua so lay mau
% so mau giua cac cua so chong len nhau
hop = win/2;          

nfft = win; % do rong cua khung tan so
spectrogram(giang,win,hop,nfft,fs,'yaxis') 
yt = get(gca,'YTick');  
set(gca,'YTickLabel', sprintf('%.0f|',yt))
title('Spectrogram');