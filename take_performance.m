clc

% Plotting the graphs of take off distance and thrust to weight ratio 



% Data for performance without gust winds
velocity = 0:0.1:100; % Velocity range (ft/s)
T_W = (velocity.^2) ; % Example T/W calculation
takeoff_distance = (velocity.^2) ; % Example takeoff distance calculation

% Plot performance without gust winds
figure;
yyaxis left; % Left y-axis
plot(velocity, T_W, 'b-', 'LineWidth', 1.5);
ylabel('Thrust-to-Weight Ratio');
yyaxis right; % Right y-axis
plot(velocity, takeoff_distance, 'r-', 'LineWidth', 1.5);
ylabel('Takeoff Distance (m)');
xlabel('Velocity (ft/s)');
title('T/W and Takeoff Distance vs. Velocity (Without Gust Winds)');
legend('T/W', 'Takeoff Distance', 'Location', 'northwest');
grid on;

% Data for performance with gust winds
gust_factor = 1.5; % Example gust effect factor
takeoff_distance_gust = takeoff_distance * gust_factor; % Modify takeoff distance

% Plot performance with gust winds
figure;
yyaxis left; % Left y-axis
plot(velocity, T_W, 'b-', 'LineWidth', 1.5);
ylabel('Thrust-to-Weight Ratio');
yyaxis right; % Right y-axis
plot(velocity, takeoff_distance_gust, 'r-', 'LineWidth', 1.5);
ylabel('Takeoff Distance (m)');
xlabel('Velocity (ft/s)');
title('T/W and Takeoff Distance vs. Velocity (With Gust Winds)');
legend('T/W', 'Takeoff Distance (Gust)', 'Location', 'northwest');
grid on;

