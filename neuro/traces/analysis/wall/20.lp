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
#modeo(1, on(goal, platform)).
#modeo(1, occludes(var(x))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, bigger(var(x),var(y))).
#modeo(1, more_goals(var(side))).
#modeo(1, danger).

#weight(-1).
#maxv(2).
%#maxp(12).
#maxp(5).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(rotate).}).
%%Value was:2.344901610017891
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-2.057764441110277
#pos(a2,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:20.729386892177587
#pos(a3,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:3.426259689922482
#pos(a4,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:0.5335157318741452
#pos(a5,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-1.0046511627906978
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a2, a5).
