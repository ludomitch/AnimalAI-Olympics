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
%%Value was:0.030730427764326003
#pos(a1,
{},
{},
{initiate(rotate).}).
%%Value was:-0.10516790531241411
#pos(a2,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:3.9516955266955267
#pos(a3,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.7857142857142857
#pos(a4,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.7849647266313933
#pos(a5,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.10775510204081636
#pos(a6,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.10973639455782315
#pos(a7,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.11177248677248679
#pos(a8,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:24.682539682539684
#pos(a9,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.11466165413533835
#pos(a10,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.11666666666666665
#pos(a11,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.11666666666666667
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.0669379144062687
#pos(a13,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.16645408163265316
#pos(a14,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:0.13351865488463438
#pos(a15,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0903929851510496
#pos(a16,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.09146453373015867
#pos(a17,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0931751253132832
#pos(a18,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.09547619047619041
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
