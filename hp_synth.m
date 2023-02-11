% hp_synth.m    1/30/18 Neil Robertson
% Find the coefficients of an IIR Butterworth highpass filter using bilinear transform.
%
% N= filter order
% fc= -3 dB frequency in Hz
% fs= sample frequency in Hz
% b = numerator coefficients of digital filter
% a = denominator coefficients of digital filter
%
function [b,a]= hp_synth(N,fc,fs)
if fc>=fs/2
   error('fc must be less than fs/2')
end
% I.  Find poles of normalized analog lowpass filter
k= 1:N;
theta= (2*k -1)*pi/(2*N);
p_lp= -sin(theta) + 1i*cos(theta);     % poles of lpf with cutoff = 1 rad/s
% II.  transform poles for hpf
Fc= fs/pi * tan(pi*fc/fs);             % continuous pre-warped frequency
pa= 2*pi*Fc./p_lp;                     % analog hp poles
% III.  Find coeffs of digital filter
% poles and zeros in the z plane
p= (1 + pa/(2*fs))./(1 - pa/(2*fs));   % poles by bilinear transform
q= ones(1,N);                          % zeros at z = 1 (f= 0)
% convert poles and zeros to polynomial coeffs
a= poly(p);                   % convert poles to polynomial coeffs a
a= real(a);
b= poly(q);                   % convert zeros to polynomial coeffs b
% amplitude scale factor for gain = 1 at f = fs/2  (z = -1)
m= 0:N;
K= sum((-1).^m .*a)/sum((-1).^m .*b);        % amplitude scale factor
b= K*b;