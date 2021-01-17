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
#maxp(7).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(observe).}).
%%Value was:0.04393535353535355
#pos(a1,
{},
{},
{initiate(rotate).}).
%%Value was:-0.1480994518184594
#pos(a2,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:5.413652312599684
#pos(a3,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.7065015231681908
#pos(a4,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.5152076318742991
#pos(a5,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.15147855365246685
#pos(a6,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.1533094098883574
#pos(a7,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.1598138245197069
#pos(a8,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:27.93372319688108
#pos(a9,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:1.3232323232323229
#pos(a10,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.3176206509539843
#pos(a11,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.1623068289734957
#pos(a12,
{},
{},
{goal(a).
initiate(interact(a)).
lava.}).
%%Value was:19.60718294051627
#pos(a13,
{},
{},
{goal(a).
initiate(avoid).
lava.}).
%%Value was:-0.16835016835016836
#pos(a14,
{},
{},
{goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.16835016835016836
#pos(a15,
{},
{},
{goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.16835016835016836
#pos(a16,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.4735091820681339
#pos(a17,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.233342631334263
#pos(a18,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:0.04351459256597598
#pos(a19,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0363523654625351
#pos(a20,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12935487632457307
#pos(a21,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.13001898269387957
#pos(a22,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.1345481652685042
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
#brave_ordering(b12@10, a16, a17).
#brave_ordering(b13@10, a16, a18).
#brave_ordering(b14@10, a16, a19).
#brave_ordering(b15@10, a16, a20).
#brave_ordering(b16@10, a16, a21).
#brave_ordering(b17@10, a16, a22).
