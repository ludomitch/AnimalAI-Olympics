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
#maxp(12).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(rotate).}).
%%Value was:1.533094384707283
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-1.547414741474151
#pos(a2,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:21.346153846153847
#pos(a3,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.8846153846153846
#pos(a4,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.884615384615385
#pos(a5,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.8846153846153855
#pos(a6,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:1.3549929676511943
#pos(a7,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:-0.6704809286898841
#pos(a8,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-1.081111111111113
#pos(a9,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:21.45226337448559
#pos(a10,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:1.6035087719298244
#pos(a11,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.4303201506591323
#pos(a12,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:0.6486486486486468
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a2, a5).
#brave_ordering(b4@10, a6, a7).
#brave_ordering(b5@10, a6, a8).
#brave_ordering(b6@10, a9, a10).
#brave_ordering(b7@10, a9, a11).
#brave_ordering(b8@10, a9, a12).
