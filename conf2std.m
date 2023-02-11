function stddev = conf2std( interval_width, percentage )
%CONF2STD - Confidence interval to standard deviation
%
%   Syntax:
%       stddev = CONF2STD(interval_width, percentage)
%
%   Description:
%       CONF2STD() - Convert a normal distribution confidence interval to
%       its standard deviation
%    
%   Inputs:
%       interval_width - difference between upper and lower confidence bound
%       percentage - Confidence interval percentage (e.g. 0.95, 0.99)
%
%   Outputs:
%       stddev - Standard deviation of corresponding normal distribution
%
%   Examples: 
%       stddev = conf2std( 0.5, 0.99 )
%
%   Other m-files required: none
%   Subfunctions: none
%   MAT-files required: none
%
%   See also: 

%   Author: Marius Oei
%   Affiliation: Institute for System Dynamics, University of Stuttgart
%   email: marius.oei@isys.uni-stuttgart.de
%   Website: http://www.isys.uni-stuttgart.de
%   Date: 24-Jan-2020; Last revision: 24-Jan-2020
%
%   Copyright (c) 2020, Marius Oei
%   All rights reserved.

zval = norminv(1-(1-percentage)/2);

stddev = interval_width/(2*zval);

end
