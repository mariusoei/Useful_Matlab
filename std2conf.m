function interval_width = std2conf( stddev, percentage )
%STD2CONF - Standard deviation to confidence interval width
%
%   Syntax:
%       interval_width = STD2CONF(stddev, percentage)
%
%   Description:
%       STD2CONF() - Convert a normal distribution standard deviation to a
%       corresponding confidence interval of desired percentage.
%    
%   Inputs:
%       stddev - Standard deviation of normal distribution
%       percentage - Confidence interval percentage (e.g. 0.95, 0.99)
%
%   Outputs:
%       interval_width - difference between upper and lower confidence bound
%
%   Examples: 
%       interval_width = std2conf( 0.5, 0.99 )
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
%   Date: 24-Jan-2020; Last revision: 31-Jan-2020
%
%   Copyright (c) 2020, Marius Oei
%   All rights reserved.

zval = norminv(1-(1-percentage)/2);

interval_width = 2*zval*stddev;

end
