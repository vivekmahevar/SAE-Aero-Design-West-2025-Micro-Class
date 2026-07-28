clc 
clear all

% plotting the graph of the dynamic stability 

% Calculating the Dynamic Pressure

%air_density = 1.225 ;
%velocity = 50 ;
%dynamic_pressure = 0.5*air_density*velocity^2 ;

%wing_area = 0.424 ;
%mac = 268/1000 ;
%cm_alpha = -0.05 ;
%cm_q = -0.04         ;
%I_yy = 100 ;
%v_t = 0.5 ;

%natural_frequency = sqrt(-(dynamic_pressure*wing_area*mac*cm_alpha)/I_yy) ;

%a1 = (dynamic_pressure*wing_area*mac^2*cm_q)/(2*I_yy*velocity) ;

%damping_ratio = -(a1/(2*natural_frequency)) ;

%w_d = natural_frequency*sqrt(1-damping_ratio^2) ;


%t = 0:0.01:60 ;

%displacement =  3.05*exp(-(damping_ratio*natural_frequency.*t)).*(sin(w_d.*t+1.5)) ;

%disp(natural_frequency)
%disp(damping_ratio)
%disp(damping_ratio*natural_frequency)
%disp(w_d)

%d = 3.015*exp(-0.3.*t).*(sin(2.98.*t+1.470)) ;

%plot(t,d) ;
%plot(t,displacement)



%% Plotting the graphs of dynamic longitudinal stability graphs

% Velocity vs time in x - direction

x_natural_frequency = 0.65 ; 
x_damping_ratio = 0.2 ;
x_w_d = x_natural_frequency*sqrt(1-x_damping_ratio^2) ;  
t = 0:0.1:60 ;

x_displacement = 2.1*exp(-x_damping_ratio*x_natural_frequency.*t).*(cos(x_w_d.*t)+sin(x_w_d.*t)) ;


subplot(2,2,1) ;
plot(t,x_displacement,'b','Linewidth',1.5)

grid on 

xlabel('Time(sec)') ;
ylabel('velocity in x-direction(ft/sec)') ;
title('Velocity vs Time') ;

% Velocity vs time in z-direction


z_natural_frequency = 0.60 ;
z_damping_ratio = 0.2 ;
z_w_d = z_natural_frequency*sqrt(1-z_damping_ratio^2) ;  

z_displacement = -1.5*exp(-z_damping_ratio*z_natural_frequency.*t).*(cos(z_w_d.*t)+sin(z_w_d.*t)) ;

subplot(2,2,2) ;
plot(t,z_displacement,'b','Linewidth',1.5)

grid on 

xlabel('Time(sec)') ;
ylabel('velocity in z-direction(ft/sec)') ;
title('Velocity vs Time') ;

% Pitch rate vs time 

pr_t = 0:0.01:10 ;
theta_0 = 0.75 ;
pr_natural_frequency = 3.1 ;
pr_damping_ratio = 0.21 ;
pr_w_d = pr_natural_frequency*sqrt(1-pr_damping_ratio^2) ;  

pr_displacement = pr_damping_ratio*pr_natural_frequency*theta_0*exp(-pr_damping_ratio*pr_natural_frequency.*pr_t).*sin(pr_w_d.*pr_t) + pr_w_d*theta_0*exp(-pr_damping_ratio*pr_natural_frequency.*pr_t).*cos(pr_w_d.*pr_t) ;

subplot(2,2,3) ;
plot(pr_t,pr_displacement,'b','Linewidth',1.5)

grid on 

xlabel('Time(sec)') ;
ylabel('q(deg/sec)') ;
title('q vs Time') ;

% Pitch angle vs time 


pa_natural_frequency = 0.55 ;
pa_damping_ratio = 0.2 ;
pa_w_d = pa_natural_frequency*sqrt(1-pa_damping_ratio^2) ;  
phi = 5.5 ;
pa_displacement = 4*exp(-pa_damping_ratio*pa_natural_frequency.*t).*sin(pa_w_d.*t+phi) ;    %-pr_damping_ratio*pr_natural_frequency*theta_0*exp(-pr_damping_ratio*pr_natural_frequency.*pr_t).*sin(pr_w_d.*pr_t+phi) + pr_w_d*theta_0*exp(-pr_damping_ratio*pr_natural_frequency.*pr_t).*cos(pr_w_d.*pr_t+phi) ;

subplot(2,2,4) ;
plot(t,pa_displacement,'b','Linewidth',1.5)

grid on 

xlabel('Time(sec)') ;
ylabel('Theta(deg/sec)') ;
title('Theta vs Time') ;






