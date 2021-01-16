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
%%Value was:2.277353242570634
#pos(a1,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.038460361187634
#pos(a2,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.9468995510662178
#pos(a3,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.06174566174566172
#pos(a4,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.06273258904837851
#pos(a5,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.06310160427807487
#pos(a6,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:19.84287317620651
#pos(a7,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.06493506493506496
#pos(a8,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.06565656565656566
#pos(a9,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.065993265993266
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:0.7393939393939395
#pos(a11,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.05029275808936831
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0505968778696052
#pos(a13,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.051634527089072596
#pos(a14,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.05172191397543518
#pos(a15,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.052537066572154324
#pos(a16,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.053358070500927654
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
