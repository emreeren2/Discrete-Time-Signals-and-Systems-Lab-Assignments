[x,fs] = audioread('scales.wav');
b = [1, 4, 4, 1];
a = [1, -1.4, 0.9025, -0.2263];
h = impz(b,a);

y = conv(x,h);

len = 23; %length of impulse response minus one 
x1 = [x;zeros(len,1)];
y1 = filter(b,a,x1);

subplot(211); 
plot(y);
subplot(212); 
plot(y1);

%problem 1 ii-f)