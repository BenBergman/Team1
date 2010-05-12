function [sparseMatrix,xVal,yVal] = FindHighestValue(matrix)

[maxes,yVals] = max(matrix);
[maxVal,xVal] = max(maxes);
yVal = yVals(xVal);
sizeOfMatrix = size(matrix);
sparseMatrix = zeros(sizeOfMatrix(1),sizeOfMatrix(2));
sparseMatrix(yVal,xVal) = 0.9999;

% © 2010
% Benjamin Bergman - ben.bergman@gmail.com
% Matthew Woelk - umwoelk@cc.umanitoba.ca
% This document is subject to the Creative Commons 3.0 Attribution Non-Commercial Share Alike license.
% http://creativecommons.org/licenses/by-nc-sa/3.0/
