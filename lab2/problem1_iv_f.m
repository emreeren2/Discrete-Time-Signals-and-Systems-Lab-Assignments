
[x,fs] = audioread('scales.wav');
b = [1, -4, 4, -1];
a = [1, 1.5, 1, 0.25];
h = impz(b,a);

y = conv(x,h);

len = 27; %length of impulse response minus one 
x1 = [x;zeros(len,1)];
y1 = filter(b,a,x1);

subplot(211); 
plot(y);
subplot(212); 
plot(y1);

% %PROBLEM 1 iv-f)