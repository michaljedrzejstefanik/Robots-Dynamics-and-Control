clc
close all

g = 9.81;
m_1 = 220.31283854611385 * 0.45359237;  % mass link 1 - kg
m_2 = 245.07525196798429 * 0.45359237;  % mass link 2 - kg
m_Engine = 24.949277996881477 * 0.45359237;  % mass Engine - kg
l_1 = 0.5; % lenght link 1 - m
l_2 = 0.5; % lenght link 2 - m
c_1 = (m_Engine * 0 + m_1 * l_1)/ (m_Engine+m_1); % lenght to point c 1 - m
c_2 = (m_Engine * 0 + m_2 * l_2)/ (m_Engine+m_2); % lenght to point c 2 - m
p_1 = 1;  %lenght to point p 1 - m
p_2 = c_2 - 0.15; %lenght to point p 2 - m

% Solution to problem 1   

theta_1 = pi/4;
Fc_1 = [0; -m_1*g];
Jc_1 = [1 c_1*cos(theta_1); 0 c_1*sin(theta_1)];

tau_1 = Jc_1.'*Fc_1

% Solution to problem 2  

theta_1 = pi/2;
Fc_1 = [0; -m_1*g];
Jc_1 = [1 c_1*cos(theta_1); 0 c_1*sin(theta_1)];

tau_2 = Jc_1.'*Fc_1

% Solution to problem 3

theta_1 = pi/4;
Fext = [-0.8; -0.8];
Jp_1 = [1 p_1*cos(theta_1); 0 p_1*sin(theta_1)];

tau_3 = Jp_1.'*Fext

% Solution to problem 4

theta_1 = pi/4;
Fext = [-0.8; -0.2];
Jp_2 = [1 2*cos(theta_1); 0 p_2*sin(theta_1)];
tauext = 0.5; 

tau_4 = Jp_2.'*Fext + [0; tauext]

% Solution to problem 5

theta_1 = pi/4;
Fp_1 = [0.5; -0.6];
Fp_2 = [1; -0.4];
Fc_1 = [0; -m_1*g];
Jc_1 = [1 c_1*cos(theta_1); 0 c_1*sin(theta_1)];
Jp_1 = [1 p_1*cos(theta_1); 0 p_1*sin(theta_1)];
Jp_2 = [1 2*cos(theta_1); 0 p_2*sin(theta_1)];

tau_5 = Jp_1.'*Fp_1 + Jp_2.'*Fp_2 + Jc_1.'*Fc_1