function S = kardanRot(q)
    %KARDANROT Rotation matrix from global to body-attached reference frame
    %   The Kardan angles are given as q = [yaw, pitch, roll] in rad.
    psi = q(1);
    theta = q(2);
    phi = q(3);
    T_x = [1,0,0;0,cos(phi),-sin(phi);0,sin(phi),cos(phi)].';
    T_y = [cos(theta),0,sin(theta);0,1,0;-sin(theta),0,cos(theta)].';
    T_z = [cos(psi),-sin(psi),0;sin(psi),cos(psi),0;0,0,1].';

    S = (T_x*T_y*T_z);
end