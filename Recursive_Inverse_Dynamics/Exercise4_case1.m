function [A,R,R_t,P,P_com,flag, vel, acc] = Exercise4_case1(NJ, l)

    %init  modified DH table
    alpha = zeros(NJ+1,1);
    a = zeros(NJ+1,1);
    theta = zeros(NJ+1,1);
    d = zeros(NJ+1,1);
    flag = ones(NJ,1);

    alpha(2) = 90*(pi/180);
    a(2) = l(1);
    a(3) = l(2);
    a(4) = l(3);
    theta(1) = 20*(pi/180);
    theta(2) = 40*(pi/180);
    theta(3) = 10*(pi/180);
    

    P = zeros(3,1,NJ+1);    %
    P_com = zeros(3,1,NJ);  %
    R = zeros(3,3,NJ+1);    %rotary matrix
    R_t = zeros(3,3,NJ+1);  %transpose of rotary matrix


    %joint speeds  
    vel = zeros(NJ,1);
    vel(1) = 0.2;%in rad (or m) per second
    vel(2) = 0.15; 
    vel(3) = -0.2; 
    
    %joint accelerations  
    acc = zeros(NJ,1);%in rad (or m) per second
    acc(1) = 0.1;
    acc(2) = 0.085;
    acc(3) = 0.0;
    
    for i = 0:NJ
        %transformation matrix from i frame to i+1 frame
        A{i+1} =     [cos(theta(i+1)),-sin(theta(i+1)),0,a(i+1); 
                      sin(theta(i+1))*cos(alpha(i+1)), cos(theta(i+1))*cos(alpha(i+1)), -sin(alpha(i+1)), -sin(alpha(i+1))*d(i+1);
                      sin(theta(i+1))*sin(alpha(i+1)), cos(theta(i+1))*sin(alpha(i+1)), cos(alpha(i+1)), cos(alpha(i+1))*d(i+1);
                      0                              , 0                           ,    0           ,   1];         
        %rotation matrix from i frame to i+1 frame
        R(:,:,i+1) = A{i+1}(1:3,1:3);
        R_t(:,:,i+1) = R(:,:,i+1)';
        
        %position vector of i+1 frame with respect to i frame
        P(:,:,i+1) = A{i+1}(1:3,4);
        %position vector of link i COM with respect to i frame (proximal frame)
        if i~= 0
            if flag(i) == 1
                P_com(:,:,i) = [a(i+1)/2;0;0];
            else
                P_com(:,:,i) = [0;0;-d(i)/2];
            end
           
        end
    end

end 