clc 
clear all

% Plotting the graph of coefficient of moment vs alpha 

angle_of_attack = -15:0.01:15 ;

cm_alpha = -(11/100) ;
cm_0 = -(cm_alpha*3) ;
moment_coefficient = cm_0 + cm_alpha.*angle_of_attack ;

plot(angle_of_attack,moment_coefficient,'b','Linewidth',1.5) ;

grid on 
xlabel('Alpha(degrees)') ;
ylabel('Cm') ;
title('Cm vs Alpha') ;
yline(0) ;
xline(0) ;
