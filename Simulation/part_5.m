G1 = tf(5.6, [9.28, 1]);  
G2 = 0.1876 * tf(1, [1, 0.293, 0.0335]); 
G3 = 0.9944 * tf(1, conv([1 2.471], conv([1 0.4162], [1 0.1724])));

% Bode plot
figure;
subplot(1,3,1);
margin(G1);
legend("G1");

subplot(1,3,2);
margin(G2);
legend("G2");

subplot(1,3,3);
margin(G3);
legend("G3");


% nyquist plot
figure; 
nyquist(G1, 'r', G2, 'b', G3, 'g');
grid on;
title('Nyquist Plot');
legend('G1', 'G2', 'G3');
xlabel('Real');
ylabel('Imaginary');
