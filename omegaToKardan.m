function T = omegaToKardan(q)
    %OMEGATOKARDAN Kinematic Kardan equation
    %   The Kardan angles are given as q = [yaw, pitch, roll] in rad.
    %   The matrix T transforms rotational rates around a body's axes into
    %   the time derivatives of its Kardan orientation angles.
    %   Equation: d/dt(q) = T * omega
%     psi = q(1);
    theta = q(2);
    phi = q(3);
    T = [0, 1/cos(theta)*sin(phi), cos(phi)/cos(theta);...
         0, cos(phi), -sin(phi);...
         1, sin(phi)*tan(theta), cos(phi)*tan(theta)];
end