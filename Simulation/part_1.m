clc
close all

input = reshape(sigin, [], 1);
output = reshape(sigout, [], 1);

[peaks1, time1] = findpeaks(input);
[peaks2, time2] = findpeaks(output);

freq = 100;
index = 5000;

phase_shift = (time1(index) - time2(index))*freq/1000 - (atan(freq*100) - atan(freq*0.01));
disp(phase_shift)
