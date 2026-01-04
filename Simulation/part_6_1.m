G1 = tf(5.6, [9.28, 1]);  % G1 = 5.6 / (9.28s + 1)

G_c = tf([11.46, 11.46 * 0.35], [1, 0]);  % G_c = (11.46s + 11.46*0.35) / s

G_t = G1 * G_c; 

G_f = feedback(G_t, 1);


% Step Response
figure;
step(G_f);
grid on;
title('Step Response of the System');
xlabel('Time (seconds)');
ylabel('Response');

% Root Locus
figure;
rlocus(G_t);
grid on;
title('Root Locus of G_t');
xlabel('Real Axis');
ylabel('Imaginary Axis');
