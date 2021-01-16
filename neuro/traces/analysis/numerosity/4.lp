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
{goal1.
initiate(collect).
platform.}).
%%Value was:8.333333333333334
#pos(a1,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-3.6702
#pos(a2,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-3.9435000000000002
#pos(a3,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:7.335
#pos(a4,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:6.478333333333334
#pos(a5,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:5.6775
#pos(a6,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:2.3487749999999994
#pos(a7,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-3.5012250000000007
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a3, a4).
#brave_ordering(b3@10, a3, a5).
#brave_ordering(b4@10, a3, a6).
#brave_ordering(b5@10, a3, a7).
