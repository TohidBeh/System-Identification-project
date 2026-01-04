clc
close all

w = [0.01, 0.02, 0.1, 0.2, 0.5, 1, 2, 5, 10, 20, 50, 100];
w_dB = 20*log10(w);

phase_rad = [0.0894, 0.1784, 0.828, 1.428, 2.4313, 3.2428, 4.0318,...
 5.0338, 5.9901, 7.5929, 12.1569, 32.2853];

phase_deg = -1 * rad2deg(phase_rad);

gain = [5.588, 5.553, 4.756, 3.253, 1.165, 0.337, 6.708*10^(-2),...
 5.323*10^(-3), 6.909*10^(-4), 8.721*10^(-5), 5.597*10^(-6), 6.996*10^(-7)];

gain_dB = 20*log10(gain);

figure;
semilogx(w, phase_deg, '-o');
xlabel('w');
ylabel('phase');
title('semilog');
grid on;

figure
semilogx(w, gain_dB, '-or');
xlabel('w');
ylabel('gain');
title('semilog');
grid on