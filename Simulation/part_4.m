G_1 = tf(5.6, [9.28, 1]);
G_2 = 0.1876 * tf(1, [1, 0.293, 0.0335]);
G_3 = 0.9944 * tf(1, conv([1 2.471], conv([1 0.4162], [1 0.1724])));



%plot root Locus
figure;
rlocus(G_3);
title('Root Locus of G(s)');
grid on;


[K_selected, poles] = rlocfind(G);
disp(['Selected Gain K: ', num2str(K_selected)]);
disp('Corresponding Poles: ');
disp(poles);
