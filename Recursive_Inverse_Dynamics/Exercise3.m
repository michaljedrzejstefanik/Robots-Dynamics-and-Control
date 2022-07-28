function [m, l, NJ, J] = Exercise3()
    
    NJ = 2;
    
    %mass of links in kg
    m = zeros(NJ,1);
    m(1) = 10;
    m(2) = 6;
    
    %Link lengths in m
    l = zeros(NJ,1);
    l(1) = 1;
    
    % interia in kgm^2
    I_zz = zeros(NJ,1);
    I_zz(1) = 0.4;
    I_zz(2) = 0.3;

    J{1} = [0,0,0;0 ,0, 0; 0 ,0 ,I_zz(1)];
    J{2} = [I_zz(2),0,0;0, 0, 0; 0 ,0 ,0];

end

