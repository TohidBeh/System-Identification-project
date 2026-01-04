G_1 = tf(5.6, [9.28, 1]); 
G_c1 = tf([11.46, 11.46 * 0.35], [1, 0]); 
G_t1 = G_1 * G_c1; 
G_f1 = feedback(G_t1, 1);

G_2 = 0.1876 * tf(1, [1, 0.293, 0.0335]);
G_c2 = 2.89 * tf(conv([1 0.3943], [1 0.08]), [1, 0]);
%G_c2 = 1.4326 * tf([1 0.4842], [1, 0]);
G_t2 = G_2 * G_c2;
G_f2 = feedback(G_t2, 1);

G_3 = 0.9944 * tf(1, conv([1 2.471], conv([1 0.4162], [1 0.1724])));
G_c3 = 1.622 * tf(conv([1 0.5139], [1 0.15]), [1, 0]);
G_t3 = G_3 * G_c3;
G_f3 = feedback(G_t3, 1);


% Plot locus of all 3 sustems
figure;
subplot(1,3,1);
rlocus(G_t1);
grid on;
title('Root Locus of G1');
xlabel('Real Axis');
ylabel('Imaginary Axis');

subplot(1,3,2);
rlocus(G_t2);
grid on;
title('Root Locus of G2');
xlabel('Real Axis');
ylabel('Imaginary Axis');

subplot(1,3,3);
rlocus(G_t3);
grid on;
title('Root Locus of G3');
xlabel('Real Axis');
ylabel('Imaginary Axis');




% Plot Bode of all 3 systems
figure;
subplot(3,1,1);
bode(G_t1, 'r');
grid on;
title('Bode Plot of G_f1');

subplot(3,1,2);
bode(G_t2, 'b');
grid on;
title('Bode Plot of G_f2');

subplot(3,1,3);
bode(G_t3, 'g');
grid on;
title('Bode Plot of G_f3');


% % Plot Step Response of all 3 systems
% figure;
% hold on; % Hold the plot for multiple responses
% bode(G_f1, 'r');  % Plot G1 in red
% bode(G_f2, 'b');  % Plot G2 in blue
% bode(G_f3, 'g');  % Plot G3 in green
% hold off;
% 
% grid on;
% title('Bode Plot of G1, G2, G3');
% xlabel('Time (seconds)');
% ylabel('Response');
% legend('G1', 'G2', 'G3', 'Location', 'best');




figure;
hold on; 
nyquist(G_t1, 'r'); 
nyquist(G_t2, 'b'); 
nyquist(G_t3, 'g'); 
hold off; 

grid on;
title('Nyquist Plots of G1, G2, and G3');
xlabel('Real Axis');
ylabel('Imaginary Axis');
legend('G1 (Red)', 'G2 (Blue)', 'G3 (Green)', 'Location', 'best');


