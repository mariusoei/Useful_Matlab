function p_d = pzm_c2d( p_c, Ts )
%PZM_C2D - Convert pole/zero of continous tf to corresponding discrete p/z.
%   Pole-zero matching function for a single continous transfer function
%   pole using the matched z-transform. 
%   https://en.wikipedia.org/wiki/Matched_Z-transform_method
%
%   Syntax:
%       p_d = PZM_C2D( p_c, Ts )
%
%   Description:
%       PZM_C2D() - description
%    
%   Inputs:
%       p_c - Continous transfer function pole/zero
%       Ts - Discrete transfer function sample time
%
%   Outputs:
%       p_d - Matched discrete transfer function pole/zero
%
%   Examples: 
%       Line 1 of example
%       Line 2 of example
%       Line 3 of example
%
%   Other m-files required: none
%   Subfunctions: none
%   MAT-files required: none
%
%   See also: c2d

%   Author: Marius Oei
%   Affiliation: Institute for System Dynamics, University of Stuttgart
%   email: marius.oei@isys.uni-stuttgart.de
%   Website: http://www.isys.uni-stuttgart.de
%   Date: 20-Jan-2020; Last revision: 20-Jan-2020
%
%   Copyright (c) 2020, Marius Oei
%   All rights reserved.

p_d = exp(p_c*Ts);

end
