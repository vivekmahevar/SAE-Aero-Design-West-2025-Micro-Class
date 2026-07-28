clc 
clear all

% Plotting the graph of coefficient of moment vs alpha 

angle_of_attack = -15:0.01:15 ;

cm_alpha = -(11/100) ;
cm_0 = -(cm_alpha*3) ;
moment_coefficient = cm_0 + cm_alpha.*angle_of_attack ;

 
figure(1)
plot(angle_of_attack,moment_coefficient,'b','Linewidth',1.5) ;

grid on 
xlabel('Alpha(degrees)') ;
ylabel('Cm') ;
title('Cm vs Alpha') ;
yline(0) ;
xline(0) ;


a = 0.11 ;
angle_of_attack = -15:0.01:15;

% P is the percentage camber 
% for example NACA 6409 
% 6% that means p = 0.06

p = 0.02 ;
cl0 = 2*pi*((2*p+1)-((4*p^2)+1)^0.5) ;
lift_coefficient = cl0 + a*angle_of_attack; 

fprintf('The cl0 is %.3f \n',cl0) ;

hold on 
figure(2)
plot(angle_of_attack,lift_coefficient,'b','Linewidth',1.5) ;
plot(angle_of_attack,lift_coefficient,'b','Linewidth',1.5) ;
hold off 
grid on



xlabel('Angle of Attack(degree)') ;
ylabel('Coefficient of Lift(cl)') ;
title('Cl vs Alpha') ;
xline(0) ;
yline(0) ;
fprintf('The Clmax of the airfoil is %.4f \n',lift_coefficient(end)) ;
fprintf('The Cl at zero angle of attck is %.4f \n',cl0) ;


figure(3) 

plot(lift_coefficient,moment_coefficient,'b','Linewidth',1.5) ;
grid on 
xline(0) ;
yline(0) ;
xlabel("Lift Coefficient") ;
ylabel("Moment Coefficient") ;
title("Cm vs Cl") ;

