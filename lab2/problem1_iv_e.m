
[x,fs] = audioread('scales.wav');
b = [1, -4, 4, -1];
a = [1, 1.5, 1, 0.25];

h = impz(b,a);

y1 = filter(b,a,x);
y2 = conv(x,h);

subplot(211); 
plot(y1);
%sound(y1,fs)

subplot(212); 
plot(y2);
sound(y2,fs)

% %PROBLEM 1 iv-e)