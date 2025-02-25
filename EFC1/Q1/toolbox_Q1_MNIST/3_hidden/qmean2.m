% FEEC/Unicamp
% 28/05/2017
% qmean2.m
% Gives a kind of root mean square (quadratic mean) for the elements of four matrices, taken together.
%
function [rms] = qmean2(w1,w2,w3,w4)
[nr1,nc1] = size(w1);
v1 = reshape(w1,nr1*nc1,1);
[nr2,nc2] = size(w2);
v2 = reshape(w2,nr2*nc2,1);
[nr3,nc3] = size(w3);
v3 = reshape(w3,nr3*nc3,1);
[nr4,nc4] = size(w4);
v4 = reshape(w4,nr4*nc4,1);
v = [v1;v2;v3;v4];
n_v = length(v);
rms = sqrt(sum(v.*v)/n_v);
