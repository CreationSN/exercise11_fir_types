clc; clear; close all;

h1 = [1 2 3 4 4 3 2 1];     
h2 = [1 2 3 4 3 2 1];       
h3 = [-1 -2 -3 -4 3 3 2 1]; 
h4 = [-1 -2 -3 0 3 2 1];    

filters = {h1, h2, h3, h4};
titles  = {'FIR Type I (Even, Symmetric)', ...
           'FIR Type II (Odd, Symmetric)', ...
           'FIR Type III (Even, Antisymmetric)', ...
           'FIR Type IV (Odd, Antisymmetric)'};

figure('Name', 'Exercise 11 – FIR Filter Types', 'NumberTitle', 'off', 'Position', [100 100 1300 800]);

for i = 1:4
    h = filters{i};
    [H, w] = freqz(h, 1, 512);

  
    subplot(4,3,(i-1)*3 + 1);
    plot(w/pi, abs(H), 'LineWidth', 1.5);
    grid on; title([titles{i} ' - Magnitude']);
    xlabel('\omega / \pi'); ylabel('|H(e^{j\omega})|');


    subplot(4,3,(i-1)*3 + 2);
    plot(w/pi, unwrap(angle(H)), 'LineWidth', 1.5);
    grid on; title([titles{i} ' - Phase']);
    xlabel('\omega / \pi'); ylabel('Phase (radians)');


    subplot(4,3,(i-1)*3 + 3);
    zplane(h, 1);
    title([titles{i} ' - Zero Plot']);
end

sgtitle('Exercise 11 – FIR Filter Types: Magnitude, Phase, and Zero Plots');
