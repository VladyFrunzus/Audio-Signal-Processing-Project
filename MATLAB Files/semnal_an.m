function [t,y] = semnal_an(F0,A,Tmax,Fs)

    % Vectorul timp
    t = 0:1/Fs:Tmax-1/Fs;

    % Semnalul Analog
    y = A*(sawtooth(2*pi*F0*t).*gate(2*pi*F0*t - pi, 50) + gate(2*pi*F0*t - pi/2, 25));
 
end