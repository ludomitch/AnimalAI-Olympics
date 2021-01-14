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
{goal1.
initiate(collect).}).
%%Value was:6.8170714285714284
#pos(a1,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:6.308357142857143
#pos(a2,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:3.9813428571428573
#pos(a3,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:8.571428571428571
#pos(a4,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-0.8265918367346938
#pos(a5,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-3.076071428571429
#pos(a6,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:10.360242857142858
#pos(a7,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:5.3720357142857145
#pos(a8,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.6641479591836736
#pos(a9,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.0186128571428568
#pos(a10,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:0.5613489795918368
#pos(a11,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.8911214285714286
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a3, a4).
#brave_ordering(b3@10, a3, a5).
#brave_ordering(b4@10, a6, a7).
#brave_ordering(b5@10, a6, a8).
#brave_ordering(b6@10, a6, a9).
#brave_ordering(b7@10, a6, a10).
#brave_ordering(b8@10, a6, a11).
