function [m, l, NJ, J] = Exercise4()
    
    NJ = 3;
    
    %mass of links in kg
    m = zeros(NJ,1);
    m(1) = 20;
    m(2) = 20;
    m(3) = 6;
    
    %Link lengths in m
    l = zeros(NJ,1);
    l(1) = 1;
    l(2) = 0.8;
    l(3) = 0.35;
    
    % interia in kgm^2
    J{1} = [0.2,0,0;0 ,0.2, 0; 0 ,0 ,0.8];
    J{2} = [0.2,0,0;0 ,0.2, 0; 0 ,0 ,0.8];
    J{3} = [0.08,0,0;0 ,0.08, 0; 0 ,0 ,0.1];

end

