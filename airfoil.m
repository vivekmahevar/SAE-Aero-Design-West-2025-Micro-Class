clc;
clear all;

% Add file paths to airfoil .dat files
filename_naca2412 = "C:\Users\mahev\Desktop\1.Design and Program Files\Xflr\NACA2412.dat" ;
filename_naca4412 = "C:\Users\mahev\Desktop\1.Design and Program Files\Xflr\NACA4412.dat" ;
filename_naca6412 = "C:\Users\mahev\Desktop\1.Design and Program Files\Xflr\NACA6412.dat" ;
filename_clarky = "C:\Users\mahev\Desktop\1.Design and Program Files\Xflr\CLARKY.dat" ;
filename_raf32 = "C:\Users\mahev\Desktop\1.Design and Program Files\Xflr\RAF32.dat" ;
filename_interpolated1 = "C:\Users\mahev\Desktop\1.Design and Program Files\Xflr\interpolated_1.dat" ;
filename_interpolated2 = "C:\Users\mahev\Desktop\1.Design and Program Files\Xflr\interpolated_2.dat" ;
filename_main_interpolated = "C:\Users\mahev\Desktop\1.Design and Program Files\Xflr\main_interpolated.dat" ;

% Read and process NACA2412 data
fileID_naca2412 = fopen(filename_naca2412, 'r');
header_naca2412 = fgetl(fileID_naca2412); % Read the header
data_naca2412 = fscanf(fileID_naca2412, '%f %f', [2 Inf]); % Read x-y data
fclose(fileID_naca2412);
data_naca2412 = data_naca2412'; % Transpose data
x_naca2412 = data_naca2412(:, 1); % X-coordinates
y_naca2412 = data_naca2412(:, 2); % Y-coordinates

% Read and process NACA4412 data
fileID_naca4412 = fopen(filename_naca4412, 'r');
header_naca4412 = fgetl(fileID_naca4412); % Read the header
data_naca4412 = fscanf(fileID_naca4412, '%f %f', [2 Inf]); % Read x-y data
fclose(fileID_naca4412);
data_naca4412 = data_naca4412'; % Transpose data
x_naca4412 = data_naca4412(:, 1); % X-coordinates
y_naca4412 = data_naca4412(:, 2); % Y-coordinates

% Read and process NACA6412 data
fileID_naca6412 = fopen(filename_naca6412, 'r');
header_naca6412 = fgetl(fileID_naca6412); % Read the header
data_naca6412 = fscanf(fileID_naca6412, '%f %f', [2 Inf]); % Read x-y data
fclose(fileID_naca6412);
data_naca6412 = data_naca6412'; % Transpose data
x_naca6412 = data_naca6412(:, 1); % X-coordinates
y_naca6412 = data_naca6412(:, 2); % Y-coordinates

% Read and process CLARK Y data
fileID_clarky = fopen(filename_clarky, 'r');
header_clarky = fgetl(fileID_clarky); % Read the header
data_clarky = fscanf(fileID_clarky, '%f %f', [2 Inf]); % Read x-y data
fclose(fileID_clarky);
data_clarky = data_clarky'; % Transpose data
x_clarky = data_clarky(:, 1); % X-coordinates
y_clarky = data_clarky(:, 2); % Y-coordinates

% Read and process RAF32 data
fileID_raf32 = fopen(filename_raf32, 'r');
header_raf32 = fgetl(fileID_raf32); % Read the header
data_raf32 = fscanf(fileID_raf32, '%f %f', [2 Inf]); % Read x-y data
fclose(fileID_raf32);
data_raf32 = data_raf32'; % Transpose data
x_raf32 = data_raf32(:, 1); % X-coordinates
y_raf32 = data_raf32(:, 2); % Y-coordinates

% Read and process Interpolated1 data
fileID_interpolated1 = fopen(filename_interpolated1, 'r');
header_interpolated1 = fgetl(fileID_interpolated1); % Read the header
data_interpolated1 = fscanf(fileID_interpolated1, '%f %f', [2 Inf]); % Read x-y data
fclose(fileID_interpolated1);
data_interpolated1 = data_interpolated1'; % Transpose data
x_interpolated1 = data_interpolated1(:, 1); % X-coordinates
y_interpolated1 = data_interpolated1(:, 2); % Y-coordinates

% Read and process Interpolated2 data
fileID_interpolated2 = fopen(filename_interpolated2, 'r');
header_interpolated2 = fgetl(fileID_interpolated2); % Read the header
data_interpolated2 = fscanf(fileID_interpolated2, '%f %f', [2 Inf]); % Read x-y data
fclose(fileID_interpolated2);
data_interpolated2 = data_interpolated2'; % Transpose data
x_interpolated2 = data_interpolated2(:, 1); % X-coordinates
y_interpolated2 = data_interpolated2(:, 2); % Y-coordinates

% Read and process Main Interpolated data
fileID_main_interpolated = fopen(filename_main_interpolated, 'r');
header_main_interpolated = fgetl(fileID_main_interpolated); % Read the header
data_main_interpolated = fscanf(fileID_main_interpolated, '%f %f', [2 Inf]); % Read x-y data
fclose(fileID_main_interpolated);
data_main_interpolated = data_main_interpolated'; % Transpose data
x_main_interpolated = data_main_interpolated(:, 1); % X-coordinates
y_main_interpolated = data_main_interpolated(:, 2); % Y-coordinates

% Plot all airfoil shapes
figure; % Create a new figure
hold on; % Hold the plot for overlaying multiple airfoils
plot(x_naca2412, y_naca2412, 'y-', 'LineWidth', 1, 'DisplayName', 'NACA2412'); % NACA2412
plot(x_naca4412, y_naca4412, 'g-', 'LineWidth', 1, 'DisplayName', 'NACA4412'); % NACA4412
plot(x_naca6412, y_naca6412, 'b-', 'LineWidth', 1, 'DisplayName', 'NACA6412'); % NACA6412
plot(x_clarky, y_clarky, 'c-', 'LineWidth', 1, 'DisplayName', 'CLARKY'); % CLARK Y
plot(x_raf32, y_raf32, 'm-', 'LineWidth', 1, 'DisplayName', 'RAF32'); % RAF32


plot(x_interpolated1, y_interpolated1, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Interpolated1'); % Interpolated1
plot(x_interpolated2, y_interpolated2, 'b--', 'LineWidth', 1.5, 'DisplayName', 'Interpolated2'); % Interpolated2
plot(x_main_interpolated, y_main_interpolated,'k--', 'LineWidth', 1.5, 'DisplayName', 'Main Interpolated'); % Main Interpolated

% Add labels, title, legend, and grid
%xlabel('X-coordinate'); % Label for x-axis
%ylabel('Y-coordinate'); % Label for y-axis
%title('Airfoil Shapes Comparison'); % Title of the plot
legend('show'); % Show the legend
axis equal; % Ensure equal scaling for x and y
grid on; % Add grid
hold off; % Release the plot
