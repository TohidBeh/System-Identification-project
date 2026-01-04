G_2 = 0.1876 * tf(1, [1, 0.293, 0.0335]);

G_c2 = 2.89 * tf(conv([1 0.3943], [1 0.08]), [1, 0]);
%G_c2 = 1.4326 * tf([1 0.4842], [1, 0]);
G_t2 = G_2 * G_c2;
G_f2 = feedback(G_t2, 1);

% Step Response
figure;
step(G_f2);
grid on;
title('Step Response of the System');
xlabel('Time (seconds)');
ylabel('Response');

% Root Locus
figure;
rlocus(G_t2);
grid on;
title('Root Locus of G_t2');
xlabel('Real Axis');
ylabel('Imaginary Axis');
