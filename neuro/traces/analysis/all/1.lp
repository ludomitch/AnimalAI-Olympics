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
#maxp(11).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:4.236363636363636
#pos(a1,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.8484848484848486
#pos(a2,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.8484848484848486
#pos(a3,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.8636363636363638
#pos(a4,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:0.40797818181818185
#pos(a5,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.027087662337662317
#pos(a6,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.02735454545454543
#pos(a7,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.027763636363636334
#pos(a8,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.028014654002713673
#pos(a9,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.028337564322469967
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.02889960474308299
#pos(a11,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:27.272727272727273
#pos(a12,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.9090909090909092
#pos(a13,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.9090909090909092
#pos(a14,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.9090909090909092
#pos(a15,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:15.0
#pos(a16,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:13.5
#pos(a17,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-2.9524500000000002
#pos(a18,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-4.050000000000001
#pos(a19,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:2.880952380952381
#pos(a20,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.75
#pos(a21,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.75
#pos(a22,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.75
#pos(a23,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.75
#pos(a24,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.75
#pos(a25,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.314418181818182
#pos(a26,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.179018181818182
#pos(a27,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.03335885167464115
#pos(a28,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.033378787878787876
#pos(a29,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.03379679144385027
#pos(a30,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.03393181818181818
#pos(a31,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:15.0
#pos(a32,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-5.0
#pos(a33,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:11.304242424242425
#pos(a34,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.035454545454545454
#pos(a35,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.14141414141414138
#pos(a36,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.3014141414141414
#pos(a37,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:0.0
#pos(a38,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.03636363636363636
#pos(a39,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.03636363636363636
#pos(a40,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-0.03636363636363636
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a4, a5).
#brave_ordering(b4@10, a4, a6).
#brave_ordering(b5@10, a4, a7).
#brave_ordering(b6@10, a4, a8).
#brave_ordering(b7@10, a4, a9).
#brave_ordering(b8@10, a4, a10).
#brave_ordering(b9@10, a11, a12).
#brave_ordering(b10@10, a11, a13).
#brave_ordering(b11@10, a11, a14).
#brave_ordering(b12@10, a15, a16).
#brave_ordering(b13@10, a15, a17).
#brave_ordering(b14@10, a15, a18).
#brave_ordering(b15@10, a19, a20).
#brave_ordering(b16@10, a19, a21).
#brave_ordering(b17@10, a19, a22).
#brave_ordering(b18@10, a19, a23).
#brave_ordering(b19@10, a19, a24).
#brave_ordering(b20@10, a25, a26).
#brave_ordering(b21@10, a25, a27).
#brave_ordering(b22@10, a25, a28).
#brave_ordering(b23@10, a25, a29).
#brave_ordering(b24@10, a25, a30).
#brave_ordering(b25@10, a31, a32).
#brave_ordering(b26@10, a33, a34).
#brave_ordering(b27@10, a33, a35).
#brave_ordering(b28@10, a33, a36).
#brave_ordering(b29@10, a37, a38).
#brave_ordering(b30@10, a37, a39).
#brave_ordering(b31@10, a37, a40).
