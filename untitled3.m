clc;
clear all;

% Define data points
angle_of_attack = [-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15];

% Original static margin values (dimensionless) converted to inches
conversion_factor = 2.654; % Scaling factor to match 30mm (1.1811 inches) at 0 AOA
static_margin = conversion_factor * [0.4300 0.4335 0.4360 0.4385 0.4395 0.4405 0.4420 0.4430 0.4440 0.4445 ...
                                     0.4450 0.4470 0.4500 0.4525 0.4550 0.4600 0.4650 0.4700 0.4735 0.4765 ...
                                     0.4795 0.4820 0.4840 0.4860 0.4875 0.4890];

% Plot the data
figure;
plot(angle_of_attack, static_margin, '-b', 'LineWidth', 2);
xlabel('Angle of Attack (degree)');
ylabel('Static Margin (inches)');
title('Static Margin vs AOA');
grid on;
