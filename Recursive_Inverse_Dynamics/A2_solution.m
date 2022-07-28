clear all
close all 
clc

[m, l, NJ,J] = Exercise2(); % in this line select 1 part of parameters from which exercise u want
[A,R,R_t,P,P_com,flag, vel, acc] = Exercise2_case1(NJ, l); % select case of the exercise choosen 1 line earlier

w = zeros(3,1,NJ+1);        %angular velocity in rad/s
w_dt = zeros(3,1,NJ+1);     %angular acceleration in rad/s^2
v_dt = zeros(3,1,NJ+1);     %linear acceleration in m/s^2
% v_dt(2,1,1) = 9.81;       % in this line we choose if we have gravity, if so uncomment this line, if no keep commented
vCOM_dt = zeros(3,1,NJ);    %linear acceleration in COM of the link in m/s^2
F_inert = zeros(3,1,NJ);    %inertial force in N
Tau_inert = zeros(3,1,NJ);  %inertial torque in Nm

%put velocity in vector in a Z coordinate 
for i  = 1:NJ
   velocity_vector{i} = [0;0;vel(i)];
end
%put acceleration in vector in a Z coordinate 
for i = 1:NJ
   acceleration_vector{i} = [0;0;acc(i)];
end

%outward iteration (i is growing to NJ - max joint number)
%calculating angular velocity, angular acceleration, linear acceleration,
%and inear acceleration in COM in order to get inertial force and torque to
%calculate Newton Euler equation
for i = 1:NJ
    %if the joint is revolute
    if flag(i) == 1
        w(:,:,i+1) = R_t(:,:,i)*w(:,:,i) + velocity_vector{i};
        w_dt(:,:,i+1) = R_t(:,:,i)*w_dt(:,:,i) + cross(R_t(:,:,i)*w(:,:,i),velocity_vector{i}) + acceleration_vector{i};
        v_dt(:,:,i+1) = R_t(:,:,i)*(cross(w_dt(:,:,i),P(:,:,i)) + cross(w(:,:,i),cross(w(:,:,i),P(:,:,i))) + v_dt(:,:,i));     
    % if the joint is prismatic
    else
        w(:,:,i+1) = R_t(:,:,i)*w(:,:,i);
        w_dt(:,:,i+1) = R_t(:,:,i)*w(:,:,i);
        v_dt(:,:,i+1) = R_t(:,:,i)*(cross(w_dt(:,:,i),P(:,:,i)) + cross(w(:,:,i),cross(w(:,:,i),P(:,:,i))) + v_dt(:,:,i) + 2*cross(w(:,:,i+1),velocity_vector{i}) + acceleration_vector{i});
    end
    vCOM_dt(:,:,i) = cross(w_dt(:,:,i+1),P_com(:,:,i)) + cross(w(:,:,i+1),cross(w(:,:,i+1),P_com(:,:,i))) + v_dt(:,:,i+1);
    
    % inertial Force
    F_inert(:,:,i) = m(i)*vCOM_dt(:,:,i);
    Tau_inert(:,:,i) = J{i}*w_dt(:,:,i+1) + cross(w(:,:,i+1), (J{i}*w(:,:,i+1)));
end

%joint torques/forces can then be found out from the link forces/torques
Tau = zeros(3,1,NJ+1);
F = zeros(3,1,NJ+1);

%inward iterations (i is decreasing from NJ to 1)
%to calculate force and torque in system
for i = NJ:-1:1
    F(:,:,i) = R(:,:,i+1)*F(:,:,i+1) + F_inert(:,:,i);
    Tau(:,:,i) = Tau_inert(:,:,i) + R(:,:,i+1)*Tau(:,:,i+1) + cross(P_com(:,:,i),F_inert(:,:,i)) + cross(P(:,:,i+1),R(:,:,i+1)*F(:,:,i+1));
end

%calculating joint torques
for i = 1:NJ
    if flag(i) == 1 %revolute joints
        joint_torques(i) = Tau(3,1,i); %in Nm
    else %prismatic joints
        joint_torques(i) = F(3,1,i); %in N
    end
end
joint_torques