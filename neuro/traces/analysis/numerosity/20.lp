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
initiate(rotate).}).
%%Value was:6.698571428571429
#pos(a1,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:5.907857142857144
#pos(a2,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:3.283714285714286
#pos(a3,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:7.605690476190479
#pos(a4,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-0.535773809523809
#pos(a5,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-0.8291208791208795
#pos(a6,
{},
{},
{goal1.
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:1.6571428571428573
#pos(a7,
{},
{},
{goal1.
initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-3.6642857142857146
#pos(a8,
{},
{},
{goal1.
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-3.857142857142857
#pos(a9,
{},
{},
{goal1.
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-4.285714285714286
#pos(a10,
{},
{},
{goal1.
initiate(collect).
on(agent,platform).
platform.}).
%%Value was:-4.523809523809524
#pos(a11,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:9.468257142857144
#pos(a12,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:7.345714285714287
#pos(a13,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.898692307692308
#pos(a14,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:2.6124000000000005
#pos(a15,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:0.45781845238095265
#pos(a16,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-3.2123571428571434
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a3, a4).
#brave_ordering(b3@10, a3, a5).
#brave_ordering(b4@10, a6, a7).
#brave_ordering(b5@10, a6, a8).
#brave_ordering(b6@10, a6, a9).
#brave_ordering(b7@10, a6, a10).
#brave_ordering(b8@10, a11, a12).
#brave_ordering(b9@10, a11, a13).
#brave_ordering(b10@10, a11, a14).
#brave_ordering(b11@10, a11, a15).
#brave_ordering(b12@10, a11, a16).
