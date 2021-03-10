






[x,fs] = audioread('music1.wav');

[b,a]= butter(30,1/4);
a=[1];

xaa2=filter(b,a,x); 
yaa2=xaa2(1:4:end);

soundsc(yaa2,4000);
figure(1);
myspecgram(yaa2,4000);
figure(2);
freqz(b,a);