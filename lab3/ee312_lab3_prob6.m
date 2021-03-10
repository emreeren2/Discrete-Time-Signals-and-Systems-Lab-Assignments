[x,fs]= audioread('music1.wav');

h = [0.2, 0.2, 0.2, 0.2, 0.2];

y = fftfilt(h,x);
ee = myfftfilt(x,h);

%sound(ee)
sound(y);

function y = myfftfilt(x,h)
    x = x.'; %converting column vector
    len_x = length(x);
    len_h = length(h);
    total = len_x + len_h - 1;
    h = [h zeros(1,total-len_h)]
    x = [x zeros(1,total-len_x)]
    H = fft(h);
    X = fft(x);
    for i =1:total
        Y(i) = X(i).*H(i);
    end
    y = ifft(Y);
end