clc 
clear all 


%% Plotting the graph of the lift_coeffient and angle of attac 

a = 0.11 ;
angle_of_attack = -15:0.01:15;

% P is the percentage camber 
% for example NACA 6409 
% 6% that means p = 0.06

p = 0.02 ;
cl0 = 2*pi*((2*p+1)-((4*p^2)+1)^0.5) ;
lift_coefficient = cl0 + a*angle_of_attack; 

fprintf('The cl0 is %.3f \n',cl0) ;

subplot(2,2,1) ;
plot(angle_of_attack,lift_coefficient,'b','Linewidth',1.5) ;

grid on



xlabel('Angle of Attack(degree)') ;
ylabel('Coefficient of Lift(cl)') ;
title('Cl vs Alpha') ;
 
fprintf('The Clmax of the airfoil is %.4f \n',lift_coefficient(end)) ;
fprintf('The Cl at zero angle of attck is %.4f \n',cl0) ;


specific_alpha = 3 ; 
[~, index1] = min(abs(angle_of_attack - specific_alpha)); 
cl_at_specific_alpha = lift_coefficient(index1) ;

specific_cl = 1.2 ; 
[~, index2] = min(abs(lift_coefficient - specific_cl)); 
aoa_at_specific_cl = angle_of_attack(index2) ;


fprintf('The Cl at %.2f angle of attack is %.4f \n', specific_alpha, cl_at_specific_alpha) ;
fprintf('The angle of attack at %.2f the cl is %.4f \n',aoa_at_specific_cl, specific_cl) ;

%% Plotting the graph of the drag coefficient and the angle of attack 


parasite_drag_coefficient = 0.02 ;

ostwald_efficieny = 0.8 ;
aspect_ratio = 6.0377 ;
k = 1/(pi*ostwald_efficieny*aspect_ratio) ;

drag_coefficient = parasite_drag_coefficient + k*(lift_coefficient).^2 ;

subplot(2,2,2) ;
plot(angle_of_attack,drag_coefficient,'b','Linewidth',1.5) ;

grid on
xlabel('Angle of Attack(degree)') ;
ylabel('Coefficient of Drag(cd)') ;
title('Cd vs Alpha') ;




%% Plotting cl/cd vs alpha


cl_cd = lift_coefficient./drag_coefficient ;


subplot(2,2,3) ;
plot(angle_of_attack,cl_cd,'b','Linewidth',1.5) ;

grid on
xlabel('Angle of Attack(degree)') ;
ylabel('Cl/Cd') ;
title('Cl/Cd vs Alpha') ;


%% Plotting the graph of coefficient of lift and coefficinet of drag

subplot(2,2,4) ;
plot(drag_coefficient,lift_coefficient,'b','Linewidth',1.5) ;

grid on
xlabel('Coefficient of Drag(cd)') ;
ylabel('Coefficient of Lift(cl)') ;
title('Cl vs Cd') ;

[~, index] = min(abs(lift_coefficient)); % Find the index where Cl is closest to 0
drag_at_cl0 = drag_coefficient(index);   % Corresponding drag coefficient

fprintf('The cd0 is: %.4f\n', drag_at_cl0);


%%
figure(2) ;


cl_ThreeByTwo = ((lift_coefficient).^1.5./drag_coefficient) ;

plot(angle_of_attack,cl_ThreeByTwo,'b','Linewidth',1.5) ;
xlabel('Angle of Attack(deg)') ;
ylabel('(Cl^3/2)/Cd') ;
title('(Cl^3/2)/Cd vs AoA') ;
grid on ;





