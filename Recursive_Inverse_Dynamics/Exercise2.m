function [m, l, NJ, J] = Exercise2()
    
    NJ = 2;
    
    %mass of links in kg
    m = zeros(NJ,1);
    m(1) = 22;
    m(2) = 19;
    
    %Link lengths in m 
    l = zeros(NJ,1);
    l(1) = 1;
    l(2) = 0.8;
    
    % interia in kgm^2
    I_zz = zeros(NJ,1);
    I_zz(1) = 0.4;
    I_zz(2) = 0.3;

    for i = 1:NJ
        J{i} = [0,0,0;0 ,I_zz(i), 0; 0 ,0 ,I_zz(i)];
    end
end

