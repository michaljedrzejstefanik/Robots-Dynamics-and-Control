% Simscape(TM) Multibody(TM) version: 7.4

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(5).translation = [0.0 0.0 0.0];
smiData.RigidTransform(5).angle = 0.0;
smiData.RigidTransform(5).axis = [0.0 0.0 0.0];
smiData.RigidTransform(5).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 0];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = 'RootGround[Basis v1:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-30 96.379104309719992 -258.02296583639998];  % mm
smiData.RigidTransform(2).angle = 4.5288089140950355e-16;  % rad
smiData.RigidTransform(2).axis = [0.58219044268284426 0.16211170037137798 -0.79672710826948412];
smiData.RigidTransform(2).ID = 'SixDofRigidTransform[Motor v1:2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [50 -27.750226596299999 -1190.571269966];  % mm
smiData.RigidTransform(3).angle = 8.6029010120350001e-16;  % rad
smiData.RigidTransform(3).axis = [0 1 0];
smiData.RigidTransform(3).ID = 'SixDofRigidTransform[Link_1 v1:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-30 96.379104309719992 -1250.571269966];  % mm
smiData.RigidTransform(4).angle = 2.9268054932879006e-16;  % rad
smiData.RigidTransform(4).axis = [-0.20747765005211674 0.9490762448715141 0.23708080088745559];
smiData.RigidTransform(4).ID = 'SixDofRigidTransform[Motor v1:3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 221.37910430969998 -1313.1355893880002];  % mm
smiData.RigidTransform(5).angle = 2.3551411510250434e-16;  % rad
smiData.RigidTransform(5).axis = [0.48664494403941255 0.79885978737819341 0.35355302084828039];
smiData.RigidTransform(5).ID = 'SixDofRigidTransform[Link_2 v2:1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 196.47226861414433;  % lbm
smiData.Solid(1).CoM = [199.99999999999997 126.61098726817272 -19.311664432216144];  % mm
smiData.Solid(1).MoI = [16377137.535451008 4287117.4120972864 17736444.038605511];  % lbm*mm^2
smiData.Solid(1).PoI = [3638.4399436458807 3.0798222243535924e-09 0];  % lbm*mm^2
smiData.Solid(1).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Basis v1.ipt_{F426669D-444F-2513-0E3C-FD8A77CC9A67}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 24.949277996881477;  % lbm
smiData.Solid(2).CoM = [230.1467832604622 29.959236427476654 10.053732496332719];  % mm
smiData.Solid(2).MoI = [149201.11148325866 716177.25760820927 716128.35593347275];  % lbm*mm^2
smiData.Solid(2).PoI = [87.435407015461223 -314.84116656174803 238.85088163589677];  % lbm*mm^2
smiData.Solid(2).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Motor v1.ipt_{695534E2-4875-A258-4496-ED919F673A07}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 220.31283854611385;  % lbm
smiData.Solid(3).CoM = [150 154.12933090519084 446.27415206496755];  % mm
smiData.Solid(3).MoI = [26816145.137472179 26761359.189902235 3359478.5257616444];  % lbm*mm^2
smiData.Solid(3).PoI = [5.9132586707588968e-08 0 0];  % lbm*mm^2
smiData.Solid(3).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'Link_1 v1.ipt_{630AB7E4-4DD9-0BDA-B9C7-918C197A2B2A}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 245.07525196798429;  % lbm
smiData.Solid(4).CoM = [200.00000000000003 -95.000000000124658 -459.08130766357294];  % mm
smiData.Solid(4).MoI = [20712979.176364243 22294159.225449454 5363228.3306363812];  % lbm*mm^2
smiData.Solid(4).PoI = [1.6235180194939153e-05 -9.8554311179314969e-09 0];  % lbm*mm^2
smiData.Solid(4).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'Link_2 v2.ipt_{F0A4F571-4BA1-2B01-6BAF-938D46B88639}';

norm(smiData.Solid(1).CoM)
norm(smiData.Solid(2).CoM)
norm(smiData.Solid(3).CoM)
norm(smiData.Solid(4).CoM)