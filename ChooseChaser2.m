function ind = ChooseChaser2(Ball,TeamOwn,NotThisOne)

%-% The purpose of this function is to determine which player should chase after the ball.
%-% Whichever player can get to the ball first is chosen.
%-% If NotThisOne is set, that player will not be chosen.

global FUN M

if exist('NotThisOne','var')
  omit = NotThisOne;
else
  omit = -1;
end

for i = 1:M
  if i ~= omit
    %-% the x position and y position are not used
    [garbage1, garbage2, timeTillKick(i)] = FUN.Intersection(TeamOwn{i}.Pos,TeamOwn{i}.Type,Ball.Pos,0);
    %-% 0 is chosen because we assume the opponent needs no time to wind-up.
  else
    timeTillKick(i) = inf;
  end
end

[value ind] = min(timeTillKick);

% © 2010
% Benjamin Bergman - ben.bergman@gmail.com
% Matthew Woelk - umwoelk@cc.umanitoba.ca
% This document is subject to the Creative Commons 3.0 Attribution Non-Commercial Share Alike license.
% http://creativecommons.org/licenses/by-nc-sa/3.0/
