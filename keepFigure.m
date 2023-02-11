%KEEPFIGURE - Keep current trial plot figure by changing its name
%
%   Description:
%       KEEPFIGURE description
%
%   Output:
%       KEEPFIGURE None
%
%   Other m-files required: none
%   MAT-files required: none
%
%   See also: OTHER_SCRIPT_NAME,  OTHER_FUNCTION_NAME

%   Author: Marius Oei
%   Affiliation: Institute for System Dynamics, University of Stuttgart
%   email: marius.oei@isys.uni-stuttgart.de
%   Website: http://www.isys.uni-stuttgart.de
%   Date: 18-Aug-2020; Last revision: 18-Aug-2020
%
%   Copyright (c) 2020, Marius Oei

h = gcf;

oldname = get(h,'Name');

fprintf('Current name is "%s".\n',oldname);

ext = input('What to append? ','s');

set(h,'Name',[oldname ext])
