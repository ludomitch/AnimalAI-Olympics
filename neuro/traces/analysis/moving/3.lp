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
#maxp(7).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:3.1352555205047317
#pos(a1,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.0116719242902208
#pos(a2,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.920307570977918
#pos(a3,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.0863564668769716
#pos(a4,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.0874718341595313
#pos(a5,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.08901156677181915
#pos(a6,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:22.263406940063092
#pos(a7,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.09148264984227131
#pos(a8,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.0922712933753943
#pos(a9,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.09274447949526814
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.0724787467251244
#pos(a11,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07122311442500721
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07168704896071906
#pos(a13,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07257999098693106
#pos(a14,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07270662460567823
#pos(a15,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0737993904721168
#pos(a16,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07516338313195647
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a6, a7).
#brave_ordering(b6@10, a6, a8).
#brave_ordering(b7@10, a6, a9).
#brave_ordering(b8@10, a10, a11).
#brave_ordering(b9@10, a10, a12).
#brave_ordering(b10@10, a10, a13).
#brave_ordering(b11@10, a10, a14).
#brave_ordering(b12@10, a10, a15).
#brave_ordering(b13@10, a10, a16).
