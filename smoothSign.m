function sgn = smoothSign(vals)
%SMOOTHSIGN Smooth sign function based on atan
%   A sign function that is differentiable. Uses a scaled atan.

sgn = 2/pi*atan(vals*1000);

end

