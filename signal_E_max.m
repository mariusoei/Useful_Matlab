function E_max = signal_E_max( sig, t, sig_ref, t_ref )
%SIGNAL_E_MAX - Calculate maximum absolute error of sig to reference sig_ref
%   Output is a signed scalar.
%
%   Syntax:
%       E_max = SIGNAL_E_MAX( sig, t, sig_ref, t_ref )
%
%   Description:
%       SIGNAL_E_MAX() - Calculate max absolute error of signal
%    
%   Inputs:
%       sig     - Estimated signal
%       t       - Time vector
%       sig_ref - Reference signal
%       t_ref   - Time vector for reference signal
%
%   Outputs:
%       E_max - Signed maximum absolute error
%
%
%   Other m-files required: none
%   Subfunctions: none
%   MAT-files required: none
%
%   See also: signal_AE, signal_error
%
%   Author: Marius Oei
%   Affiliation: Institute for System Dynamics, University of Stuttgart
%   email: marius.oei@isys.uni-stuttgart.de
%   Website: http://www.isys.uni-stuttgart.de
%   Date: 26-Jun-2020; Last revision: 26-Jun-2020
%
%   Copyright (c) 2020, Marius Oei
%   All rights reserved.


if (length(t)~=length(t_ref))||~all(t==t_ref)
    % resample reference to match time vector
    sig_ref = interp1(t_ref,sig_ref,t);
end

E = sig_ref - sig;
AE = abs(E);

[~,ind] = max(AE);

E_max = E(ind(1));

end
