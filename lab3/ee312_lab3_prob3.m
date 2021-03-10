x1 = [1:8]';
x2 = ones(1,8)';
x3 = [1 1 1 0 0 0 0 0]';

y1 = fft(x1);
y2 = fft(x2);
y3 = fft(x3);

y1_shift = fftshift(y1);
y2_shift = fftshift(y2);
y3_shift = fftshift(y3);

x = [(-100*pi),(-300*pi/4),(-200*pi/4),(-100*pi/4),(100*pi/4),(200*pi/4),(300*pi/4),(100*pi)];

subplot(3,2,1); A = plot(abs(y1_shift));
subplot(3,2,2); A_CTFT = plot(x,abs(y1_shift));

subplot(3,2,3); B = plot(abs(y2_shift));
subplot(3,2,4); B_CTFT = plot(x,abs(y2_shift));

subplot(3,2,5); p3=plot(abs(y3_shift));
subplot(3,2,6); p3_CTFT= plot(x,abs(y3_shift));