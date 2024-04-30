function [n,y] = semnal_dig(F0,A,Tmax,Fs)

    % Vectorul de esantioane
    n = 1:Tmax*Fs;

    % Semnalul Digital
    y = A*(sawtooth(2*pi*F0*n/Fs).*gate(2*pi*F0*n/Fs - 3.14, 50) + gate(2*pi*F0*n/Fs - pi/2, 25));
 
end