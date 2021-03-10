[x,fs] = audioread('music2.wav');

b = fir1(100,1/4);
a = [1];
xaa3 = filter(b,a,x);
yaa3 = xaa3(1:4:end);
figure(1);
myspecgram(yaa3,4000);
figure(2);
freqz(b,a);