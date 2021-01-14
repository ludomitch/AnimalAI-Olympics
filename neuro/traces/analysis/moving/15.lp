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
{initiate(observe).}).
%%Value was:0.10539058117961767
#pos(a1,
{},
{},
{initiate(rotate).}).
%%Value was:-0.1390307367051552
#pos(a2,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:5.501756841258969
#pos(a3,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.0206710768601244
#pos(a4,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.7473690392295045
#pos(a5,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.14192448560283477
#pos(a6,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.14533061164977767
#pos(a7,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.1503771213073538
#pos(a8,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:27.669133192389015
#pos(a9,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.15063424947145876
#pos(a10,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.15380549682875258
#pos(a11,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.15734265734265734
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.3267888386673492
#pos(a13,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.3317923358754968
#pos(a14,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0006554495228527822
#pos(a15,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.014472644768731106
#pos(a16,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12145316804407737
#pos(a17,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12258097485195028
#pos(a18,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.1263112726400909
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a2, a5).
#brave_ordering(b4@10, a2, a6).
#brave_ordering(b5@10, a2, a7).
#brave_ordering(b6@10, a8, a9).
#brave_ordering(b7@10, a8, a10).
#brave_ordering(b8@10, a8, a11).
#brave_ordering(b9@10, a12, a13).
#brave_ordering(b10@10, a12, a14).
#brave_ordering(b11@10, a12, a15).
#brave_ordering(b12@10, a12, a16).
#brave_ordering(b13@10, a12, a17).
#brave_ordering(b14@10, a12, a18).
