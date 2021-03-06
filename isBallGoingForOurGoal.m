function [isBallGoingForGoal wallIntersection] = isBallGoingForOurGoal( Ball )


%-% This function determines whether the ball is heading for our goal.
%=% This function does not take into account rebounds off of the walls.

global FieldX FieldY Environment

%Received parameters
Bx=Ball.Pos(1);
By=Ball.Pos(2);
BVx=Ball.Pos(3);
BVy=Ball.Pos(4);

isBallGoingForGoal = false;
wallIntersection = 0;

if BVx < 0
  slope = BVy/BVx;
  wallIntersection = slope*(-Bx) + By;

  if wallIntersection < FieldY/2+Environment.GoalSize/2 && wallIntersection > FieldY/2-Environment.GoalSize/2
    isBallGoingForGoal = true;
  end
end


% © 2010
% Benjamin Bergman - ben.bergman@gmail.com
% Matthew Woelk - umwoelk@cc.umanitoba.ca
% This document is subject to the Creative Commons 3.0 Attribution Non-Commercial Share Alike license.
% http://creativecommons.org/licenses/by-nc-sa/3.0/
