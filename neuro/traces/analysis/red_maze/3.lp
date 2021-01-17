#modeo(1, initiate(rotate), (positive)).
#modeo(1, initiate(observe), (positive)).
#modeo(1, initiate(climb), (positive)).
#modeo(1, initiate(collect), (positive)).
#modeo(1, initiate(interact(var(x))), (positive)).
#modeo(1, initiate(explore(var(x))), (positive)).
#modeo(1, initiate(balance), (positive)).
#modeo(1, initiate(avoid), (positive)).
#modeo(1, initiate(drop(var(side))), (positive) ).
#modeo(1, on(agent, platform)).
#modeo(1, occludes(var(x))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, bigger(var(x),var(y))).
#modeo(1, more_goals(var(side))).
#modeo(1, danger).

#weight(-1).
#maxv(2).
#maxp(5).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:18.75
#pos(a1,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-3.75
#pos(a2,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-3.75
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
