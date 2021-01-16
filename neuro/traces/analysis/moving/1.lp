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
%%Value was:1.314418181818182
#pos(a1,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.179018181818182
#pos(a2,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.03335885167464115
#pos(a3,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.033378787878787876
#pos(a4,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.03379679144385027
#pos(a5,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.03393181818181818
#pos(a6,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:14.927272727272728
#pos(a7,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.03496503496503497
#pos(a8,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.035454545454545454
#pos(a9,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.035454545454545454
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:0.40797818181818185
#pos(a11,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.027087662337662317
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.02735454545454543
#pos(a13,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.027763636363636334
#pos(a14,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.028014654002713673
#pos(a15,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.028337564322469967
#pos(a16,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.02889960474308299
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
