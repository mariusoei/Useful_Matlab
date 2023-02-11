function T_z = rotz(psi)
%ROTZ Rotation matrix about the z-axis
%   Angle in radians.
T_z = [cos(psi),-sin(psi),0;sin(psi),cos(psi),0;0,0,1];
end

