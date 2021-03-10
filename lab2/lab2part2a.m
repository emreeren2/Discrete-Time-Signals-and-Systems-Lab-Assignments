

[x,fs] = audioread('scales.wav');

y = x(1:4:end);
soundsc(x,16000);
figure(1);
myspecgram(x,16000);

pause(2);

soundsc(y,4000);
figure(2);
myspecgram(y,4000);


