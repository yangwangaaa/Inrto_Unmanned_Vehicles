% Atilla Dogan, 20141101
% XX4378/XX5378 - Intro to UVS - Fall 2017
%%%%%%%%%%%%%%% Track Vehicle Parameter %%%%%%%%%%%%%%%%%%%%%%%%%
b = 0.5842 ; % [m] Effective Platform Width = Diagonal length
             % Actual Width = 0.3556 m
rNominal = 0.052959; % [m] Nominal Wheel Radius

Vmax = 0.43; %132/866.1417; % [m/s] Maximum speed of the vehicle
% wMax = Vmax/rNominal; % [rad/s] Maximum angular speed of wheels % NOT USED

rr = 1*rNominal; %% Effective vehicle right wheel 
rl = 1*rNominal; %%  1%% Effective vehicle left wheel to represent inaccuracy in the vehicle

%%%%%%%%%%%%%%% Encoder Parameter %%%%%%%%%%%%%%%%%%%%%%%%%
eTick = 237;%236.8852;%900; % 866.1417-905.5118; % [ticks/m] number of ticks per 1 m of vehicle translation % from 22-23 [ticks/inch]
TsampleEncoder = 1/10; %1/100; % 0.1 [s] Encoder sample time
%%
%%%%%%%%%%%%%%% Duty Cycle -> Speed - Conversion %%%%%%%%%%%%%%%%%%%%%%%%%
dcArray = [-100  -30 0  30  100];
wArray  = [-Vmax, 0, 0,  0, Vmax]./rNominal;

%%%%%%%%%%%%%%%%%% Initial Conditions %%%%%%%%%%%%%%%%%%%%%%%%%%%
xIC = 0;
yIC = 0;
thetaIC = 0*(pi/180);

%%%%%%%%%%%%%%%%%% Way Points (Used Later) %%%%%%%%%%%%%%%%%%%%%%%%%%%
X_array  = [3 4 6 1]; 
Y_array  = [-3 1 1 3]; 
%%%%%%%%%%%%%%%%%%% guidance parameter %%%%%%%%%%%%%%%%%%%%%%%%%%%
rp1 =  0.3; % 1 -> [m] proximity circle to start slowing down
rp2 =  0.5;  % [m] radius of wayPoint proximity circle to switch to the next wayPoint
