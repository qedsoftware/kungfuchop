%KUNGFUCHOP	Numerical cleanup
%	Chops off tiny numerical garbage in a matrix. 
%	Threshold can be optionally provided as a second argument.
% 
% 	Example:
%		X=[1+0.000000001i, 0.000000001-1i, 0.000000001i, 0.000000001];
%		kungfuchop(X) returns [1.0000,0 - 1.0000i,0,0]
%
%	Version 2.0, by William Wu, Copyleft 2007, All Wrongs Reserved
function Y = kungfuchop(X,ee)
if nargin < 2
	ee = 10^(-8);
end
X_r = real(X); X_i = imag(X);	
Y = X_r.*(abs(X_r) > ee) + i*X_i.*(abs(X_i) > ee);