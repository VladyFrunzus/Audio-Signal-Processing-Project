function y = Fourier_Analysis(x, Fs, Nfft)

% Verificam daca stim Nfft
if nargin < 3
    Nfft = length(x);
end

% Transformata Fourier Discreta
y = fft(x,Nfft);

% TFD1 Spectru Amplitudine in functie de indicele k
k = 1:Nfft;
figure();
plot(k, abs(y));
title('Spectrul de amplitudine |X(k)|');
xlabel('k');
ylabel('|X(k)|');

% Spectrele de Amplitudine si Faza in functie de frecventa normata
Fnorm = ((k-1)/Nfft) - 0.5;
figure();
plot(Fnorm, fftshift(abs(y)));
title('Spectrul de amplitudine in frecvente normate');
xlabel('f');
ylabel('|X|');
figure();
plot(Fnorm, angle(y))
title('Spectrul de faza in frecvente normate');
xlabel('f');
ylabel('arg(X) [rad]');

% Spectrul de Amplitudine in functie de frecventa nenormata
Fnenorm = Fnorm*Fs;
figure();
plot(Fnenorm, fftshift(abs(y)));
title('Spectrul de amplitudine in frecvente nenormate');
xlabel('F(Hz)');
ylabel('|X|');

end