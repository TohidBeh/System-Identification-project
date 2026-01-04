G1 = tf(5.6, [9.28, 1]);  % G1 = 5.6 / (9.28s + 1)
G_c = tf([11.46, 11.46 * 0.35], [1, 0]);  % G_c = (11.46s + 11.46*0.35) / s
G_t = G1 * G_c; 
G_f1 = feedback(G_t, 1);

G_2 = 0.1876 * tf(1, [1, 0.293, 0.0335]);
G_c2 = 2.89 * tf(conv([1 0.3943], [1 0.08]), [1, 0]);
%G_c2 = 1.4326 * tf([1 0.4842], [1, 0]);
G_t2 = G_2 * G_c2;
G_f2 = feedback(G_t2, 1);

G_3 = 0.9944 * tf(1, conv([1 2.471], conv([1 0.4162], [1 0.1724])));
G_c3 = 1.622 * tf(conv([1 0.5139], [1 0.15]), [1, 0]);
G_t3 = G_3 * G_c3;
G_f3 = feedback(G_t3, 1);



% Plot Step Response of all 3 in One Figure
figure;
hold on; % Hold the plot for multiple responses
step(G_f1, 'r');  % Plot G1 in red
step(G_f2, 'b');  % Plot G2 in blue
step(G_f3, 'g');  % Plot G3 in green
hold off;

% Add Titles, Labels, and Legend
grid on;
title('Step Responses of G1, G2, and G3');
xlabel('Time (seconds)');
ylabel('Response');
legend('G1', 'G2', 'G3', 'Location', 'best');
