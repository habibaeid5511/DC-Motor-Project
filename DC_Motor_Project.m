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

