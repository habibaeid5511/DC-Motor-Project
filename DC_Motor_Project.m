%% DC_Motor_Model
%---------------------- DC Motor Parameters ----------------------

Power = 3336;                 % Power [W]
Va_rated = 140;              % Rated Voltage [V]
Ia_rated = 25;               % Rated Current [A]
Wm_rated = 3000 * 2 * pi / 60;  % Rated Angular Velocity [rad/s]
Te_rated = Power / Wm_rated;   % Rated Torque [Nm]

Ra = 0.26;                   % Armature Resistance [Ohm]
La = 1.7e-3;                 % Armature Inductance [H]
J = 0.00252;                 % Moment of Inertia [kg·m^2]
B = 0;                       % Coefficient of Viscous Friction [kg·m^2/s]

Kt = Te_rated / Ia_rated;    % Torque Constant [Nm/A]
%% Current_Controller_Design
W_cc= 1000;                 % Current controller frequency in Hz
T_s= 0.002;               % Sampling time in seconds
K_pc= La * W_cc ;         % Proportional current gain
K_ic= Ra * W_cc ;         % Integral current gain
Ka = 1 / K_pc ;           %Anti-windup controller gain
%% Speed_Controller_Design
W_cs= 100;                      % in Hz
W_pi=W_cs/5;                    %PI corner frequncy
K_ps= J*W_cs / Kt ;            % Proportional speed gain
K_is= (J* W_cs^2) / 5 * Kt ;   % Integral speed gain 
K_a=1/K_ps ;                   %Anti-windup controller gain
