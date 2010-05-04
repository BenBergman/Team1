function matrix = GraphMoveOut()

%=% This function maps a deadzone into our goal so that we don't accidentally pass into our net and so we don't crowd the goalie.
%=% The matrix returned from this function should be multiplied by the matrix used to choose player's destination.

global FUN Score
global Environment Team M FieldX FieldY

matrix = zeros(FieldY,FieldX);

distFromYAxis = repmat([1:FieldX], FieldY-1, 1);
distFromXAxis = repmat([1:FieldY-1]', 1, FieldX);

distToMidOurGoal = sqrt((distFromYAxis).^2 + (distFromXAxis - FieldY/2).^2);
matrix = min(ones(size(distToMidOurGoal)), distToMidOurGoal/25.0);

