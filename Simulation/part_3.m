G_1 = tf(5.6, [9.28, 1]);
G_2 = 0.1876 * tf(1, [1, 0.293, 0.0335]);
G_3 = 0.9944 * tf(1, conv([1 2.471], conv([1 0.4162], [1 0.1724])));
output = reshape(sigout, [], 1);  % used for to plot the system step func

step(G_1); 
hold on;
step(G_2); 
step(G_3); 
plot(tout ,output, '--')
hold off;

title('step responses of different transfer functions');
xlabel('Time (seconds)');
ylabel('Response');
legend('Location', 'best');
grid on;