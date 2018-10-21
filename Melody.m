% cac buoc thuc hien
% B1: ghi am va luu file 'orig_input.wav' chay cac cau lenh tren cua so Command Window
%{
rec = audiorecorder(44100,16,1) %Tao bien rec voi tan so lay mau fs=44100 Hz
record(rec)                     % bat dau ghi am
stop(rec)                       % ket thuc ghi am
y = getaudiodata(rec,'double'); %Lay du lieu am thanh vua ghi
filename=('orig_input.wav');    %Dat ten cho file am thanh vua ghi la 'orig_input.wav'
audiowrite(filename,y,44100);   %Luu file am thanh vua ghi
sound(y,44100);                 %Nghe am thanh vua ghi
%}
%B2: Tien hanh tao melody 
fs = 44100;      %tan so lay mau (Hz)
t = 0:1/fs:1;    %truc thoi gian(seconds)
f = 410;         %tan so(Hz)
tone = {};
music =[];
for i=1:6
   note{i}=sin(2*pi*f*((2^(i-1)).^(1/6))*t);
end
do = note{1};
% 'A': do 'B':re  'C':mi  'D': pha 'E' :son   'F':la   'G':Do
A = note{1}; 
B = note{2};
C = note{3};
D = note{4};
F = note{5};
G = note{6};
music = [D D C C B B A A F F D D C C B B];%tao ra mot ban nhac 
[y,Fs] = audioread('orig_input.wav');
music1 = music(1:length(y));
giang = y + music1';    %tron 2 tin hieu voice va melody voi nhau
%Luu lai file melody da tron 2 tin hieu chay cac cau lenh tren cua so Command Window
%{
giang = getaudiodata(y,'double');  %Lay du lieu am thanh 
filename=('Melody.wav');           %Dat ten cho file am thanh la 'Melody.wav'
audiowrite(filename,giang,44100);  %Luu file am thanh 
sound(giang,44100);                %Nghe am thanh vua tao 
%}