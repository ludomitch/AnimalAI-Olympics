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
{initiate(rotate).}).
%%Value was:5.033333333333334
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-2.8499999999999996
#pos(a2,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:7.333333333333334
#pos(a3,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-2.9333333333333327
#pos(a4,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:-3.0
#pos(a5,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:20.0
#pos(a6,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-3.333333333333333
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
