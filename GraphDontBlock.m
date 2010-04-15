%=% This function maps a deadzone into the opponents goal so that we don't accidentally block shots on their goal.
%=% The matrix returned from this function should be multiplied by the matrix used to choose player's destination.

function matrix = GraphDontBlock()

global FUN Score
global Environment Team M FieldX FieldY

matrix = zeros(FieldY,FieldX);

distFromYAxis = repmat([1:FieldX], FieldY-1, 1);
distFromXAxis = repmat([1:FieldY-1]', 1, FieldX);

distToMidOppGoal = sqrt((distFromYAxis - FieldX).^2 + (distFromXAxis - FieldY/2).^2);
matrix = min(ones(size(distToMidOppGoal)), distToMidOppGoal/25.0);