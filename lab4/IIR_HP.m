% IIR HIGH-PASS
[x,fs] = audioread('music2.wav');

Wp = (2*pi*1700)/fs;
Ws = (2*pi*1900)/fs;
Rp = 0.2;
Rs = 45;

[N,Wn] = buttord(Wp,Ws,Rp,Rs); % Min order calculated
[b,a] = butter(N,Wn,'high'); % High-pass

[z,p,k] = butter(N,Wn,'high');
sos = zp2sos(z,p,k);
figure(1); fvtool(sos,'Analysis','freq')

% figure(2);
% freqz(b,a);

figure(2);
zplane(b,a);

x1= filter(b,a,x); 
soundsc(x1,fs);












