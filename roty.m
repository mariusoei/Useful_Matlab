function T_y = roty(theta)
%ROTY Rotation matrix about the y-axis
%   Angle in radians.
T_y = [cos(theta),0,sin(theta);0,1,0;-sin(theta),0,cos(theta)];
end

