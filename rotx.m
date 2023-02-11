function T_x = rotx(phi)
%ROTX Rotation matrix about the x-axis
%   Angle in radians.
T_x = [1,0,0;0,cos(phi),-sin(phi);0,sin(phi),cos(phi)];
end

