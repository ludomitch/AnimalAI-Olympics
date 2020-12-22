% #modeo(1, initiate(interact(var(x)))).
% #modeo(1, initiate(collect(var(x)))).
% #modeo(1, initiate(climb(var(x)))).
% #modeo(1, initiate(interact(var(x))), (positive) ).
% #modeo(1, initiate(collect(var(x))), (positive) ).
% #modeo(1, initiate(climb(var(x))), (positive) ).
% #modeo(1, initiate(interact(const(mask))), (positive) ).
% #modeo(1, initiate(collect(const(mask))), (positive) ).
% #modeo(1, initiate(climb(const(mask))), (positive) ).
% #modeo(1, gvis(var(x))).
% % #weight(-1).
% #weight(1).
% #maxv(4).
% #maxp(3).
% #constant(mask, lava).
% #constant(mask, ramp).
% #constant(mask, platform).
% % #bias(":- #count { X: weak_body(naf(initiate(X)));X: weak_body(initiate(X)) } != 1.").

% #bias(":- #count { X: weak_body(initiate(X)) } != 1.").

% #modeo(1, var(crime_rate) > const(crime_rate)).
% #weight(1).
% #constant(crime_rate, 1).
% #constant(crime_rate, 2).
% #constant(crime_rate, 3).
% #constant(crime_rate, 4).
% #maxp(3).
% #maxv(2).
% #modeo(1,leg_crime_rating(const(mode_of_transport), var(crime_rate)), (positive)).
% #constant(mode_of_transport, walk).
% #constant(mode_of_transport, bus).
% #constant(mode_of_transport, fly).

%168 when keep -1 and 1 weights, but Mas are always positive
%105 when one initiate (pos or neg) per rule

% HERE IS THE FINAL MODE BIAS: 8118 so very small
#modeo(1, initiate(rotate), (positive) ).
#modeo(1, initiate(observe), (positive) ).
#modeo(1, initiate(collect), (positive) ).
#modeo(1, initiate(climb), (positive) ).

#modeo(1, initiate(interact(var(id))), (positive) ).
#modeo(1, initiate(explore(var(id))), (positive) ).
#modeo(1, initiate(avoid(var(id))), (positive) ).
#modeo(1, initiate(balance(var(id))), (positive) ).
#modeo(1, initiate(drop(var(side))), (positive) ).

#modeo(1, on(agent, platform)).
#modeo(1, occludes(var(x),var(y))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, bigger(var(x),var(y))).
#modeo(1, more_goals(var(side))).
#modeo(1, moving).
#weight(1).
#weight(-1).
#maxv(4).
#maxp(9).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

present(X):-goal(X).
present(X):- visible(X,_).
separator(Y):-on(agent, X), adjacent(X, Y), platform(X).
can_occlude(X):-wall(X), not separator(X).
occluding(X,Y, O) :- present(Y), visible(X, O), not visible(Y, _), can_occlude(X).
occludes(X,Y):-occluding(X,Y,_).
occludes_more(X, Y) :- occluding(X,Z,O1), occluding(Y,Z,O2), O1 > O2.
bigger(X,Y):- goal(X), goal(Y), visible(X,O1), visible(Y,O2), O1>O2.

# NO ARGS
rotate
collect
climb
observe

# One Arg
drop
interact
explore
balance
avoid

% No point even adding masks as bias bc if they are available then those actions
% naturally are options.

% Masks are:
lava
platform
goal1
ramp

HARDCODE MASKS FOR NOW
NO POINT INCLUDING ANY OBJECT TYPES ACTUALLY EXCEPT GOAL WHICH IS A SPECIAL ALWAYS PRESENT OBJ
WE WANT TO SAY WHEN IT IS VISIBLE OR NOT BC ALWAYS PRESENT
CONDITIONS FOR MORE_GOALS_LEFT AND RIGHT
SEE IF WANT TO PUT on(goal, platform) in addtion to on(agent, platform)