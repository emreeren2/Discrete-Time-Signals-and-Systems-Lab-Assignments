

[x,fs] = audioread('music2.wav');
b=1/4*ones(1,4);
a=[1];
xaa = filter(b,a,x);
yaa = xaa(1:4:end);

soundsc(yaa,4000);
figure(1);
myspecgram(yaa,4000);
figure(2);
freqz(b,a);