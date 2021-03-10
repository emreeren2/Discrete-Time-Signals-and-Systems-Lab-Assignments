function D = mydftmtx(N)
D = zeros(N,N);
wn = exp(-1i*2*pi*(1/N));


for i=1:1:N
    for j=1:1:N
        D(i,j) = wn^((i-1)*(j-1));
    end
end

D = mydftmtx(16);
D1 = (D * (D'));
D2 = ((D') * D);

