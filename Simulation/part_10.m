G_3 = 0.9944 * tf(1, conv([1 2.471], conv([1 0.4162], [1 0.1724])));

G_c3 = 0.662 * tf([2.95, 1], [0.577, 1]);

G_t3 = G_3 * G_c3;
G_f3 = feedback(G_t3, 1);

% Step Response
figure;
step(G_f3);
grid on;
title('Step Response of the System');
xlabel('Time (seconds)');
ylabel('Response');

% Root Locus
figure;
rlocus(G_t3);
grid on;
title('Root Locus of G_t2');
xlabel('Real Axis');
ylabel('Imaginary Axis');


figure;
margin(G_t3);

