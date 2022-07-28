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
p_2 = c_2 - 0.2; %lenght to point p 2 - m
p_3 = c_1 + 0.4; %lenght to point p 3 - m  

% Solution to problem 1

theta_1 = pi/2;
theta_2 = -pi/2;
Fc_1 = [0; -m_1*g];
Fc_2 = [0; -m_2*g];
Jc_1 = [-c_1*sin(theta_1) 0; c_1*cos(theta_1) 0];
Jc_2 = [(-l_1*sin(theta_1) - c_2*sin(theta_1+theta_2)) -c_2*sin(theta_1+theta_2);
      (l_1*cos(theta_1) + c_2*cos(theta_1+theta_2)) c_2*cos(theta_1+theta_2)];

tau_1 = Jc_1.'*Fc_1 + Jc_2.'*Fc_2

% Solution to problem 2

theta_1 = 0;
theta_2 = pi/2;
Fc_1 = [0; -m_1*g];
Fc_2 = [0; -m_2*g];
Jc_1 = [-c_1*sin(theta_1) 0; c_1*cos(theta_1) 0];
Jc_2 = [(-l_1*sin(theta_1) - c_2*sin(theta_1+theta_2)) -c_2*sin(theta_1+theta_2);
      (l_1*cos(theta_1) + c_2*cos(theta_1+theta_2)) c_2*cos(theta_1+theta_2)];

tau_2 = Jc_1.'*Fc_1 + Jc_2.'*Fc_2

% Solution to problem 3 part 1

theta_1 = pi/6;
theta_2 = pi/3;
Fp_1 = [-0.8; -0.2];
Jp_1 = [(-l_1*sin(theta_1) - p_1*sin(theta_1+theta_2)) -p_1*sin(theta_1+theta_2);
       (l_1*cos(theta_1) + c_2*cos(theta_1+theta_2)) c_2*cos(theta_1+theta_2)];

tau_3a = Jp_1.'*Fp_1

% Solution to problem 3 part 2
theta_1 = pi/6;
theta_2 = pi/3;
Fp_2 = [-0.8; -0.2];
Jp_2 = [(-l_1*sin(theta_1) - p_2*sin(theta_1+theta_2)) -p_2*sin(theta_1+theta_2);
       (l_1*cos(theta_1) + c_2*cos(theta_1+theta_2)) c_2*cos(theta_1+theta_2)];

tau_3b = Jp_2.'*Fp_2

% Solution to problem 4

theta_1 = pi/6;
theta_2 = pi/3;
Fp_3 = [1.5; -0.3];
Jp_3 = [-p_3*sin(theta_1) 0; p_3*cos(theta_1) 0];
tau_ext = [0; 1.2];

tau_4 = Jp_3.'*Fp_3 + tau_ext

% Solution to problem 5

theta_1 = pi/6;
theta_2 = -pi/3;
Fp_2 = [-0.8; -0.2];
Fp_3 = [-0.8; -0.2];
Fc_1 = [0; -m_1*g];
Fc_2 = [0; -m_2*g];
Jc_1 = [-c_1*sin(theta_1) 0; c_1*cos(theta_1) 0];
Jc_2 = [(-l_1*sin(theta_1) - c_2*sin(theta_1+theta_2)) -c_2*sin(theta_1+theta_2);
       (l_1*cos(theta_1) + c_2*cos(theta_1+theta_2)) c_2*cos(theta_1+theta_2)];
Jp_2 = [(-l_1*sin(theta_1) - p_2*sin(theta_1+theta_2)) -p_2*sin(theta_1+theta_2);
       (l_1*cos(theta_1) + p_2*cos(theta_1+theta_2)) p_2*cos(theta_1+theta_2)];
Jp_3 = [-p_3*sin(theta_1) 0; p_3*cos(theta_1) 0];

tau_5 = Jc_1.' * Fc_1 + Jc_2.'* Fc_2 + Jp_2.' * Fp_2 + Jp_3.' * Fp_3
