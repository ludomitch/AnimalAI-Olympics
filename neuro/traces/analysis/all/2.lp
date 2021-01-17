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
{initiate(rotate).}).
%%Value was:0.07109908609908597
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-0.11011338878985943
#pos(a2,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.6636363636363645
#pos(a3,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.9199999999999999
#pos(a4,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.9333333333333332
#pos(a5,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.9375000000000001
#pos(a6,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:0.7393939393939395
#pos(a7,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.05029275808936831
#pos(a8,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0505968778696052
#pos(a9,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.051634527089072596
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.05172191397543518
#pos(a11,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.052537066572154324
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.053358070500927654
#pos(a13,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:27.0
#pos(a14,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.0
#pos(a15,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.0
#pos(a16,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.0
#pos(a17,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.0
#pos(a18,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:10.0
#pos(a19,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-4.374
#pos(a20,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-4.86
#pos(a21,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:10.0
#pos(a22,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:9.0
#pos(a23,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:2.5317
#pos(a24,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-5.3999999999999995
#pos(a25,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:4.933333333333334
#pos(a26,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.2
#pos(a27,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-1.2
#pos(a28,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.2
#pos(a29,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.2
#pos(a30,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-1.2666666666666666
#pos(a31,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:2.277353242570634
#pos(a32,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.038460361187634
#pos(a33,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.9468995510662178
#pos(a34,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.06174566174566172
#pos(a35,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.06273258904837851
#pos(a36,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.06310160427807487
#pos(a37,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:0.5197691197691198
#pos(a38,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:-0.22169059011164288
#pos(a39,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-0.5054131054131054
#pos(a40,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:10.0
#pos(a41,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-6.666666666666666
#pos(a42,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:18.77441077441077
#pos(a43,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.06565656565656566
#pos(a44,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.22348484848484854
#pos(a45,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.7912457912457912
#pos(a46,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:18.0
#pos(a47,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.06734006734006734
#pos(a48,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.06734006734006734
#pos(a49,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.0336700336700337
#pos(a50,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-4.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a2, a5).
#brave_ordering(b4@10, a6, a7).
#brave_ordering(b5@10, a6, a8).
#brave_ordering(b6@10, a6, a9).
#brave_ordering(b7@10, a6, a10).
#brave_ordering(b8@10, a6, a11).
#brave_ordering(b9@10, a6, a12).
#brave_ordering(b10@10, a13, a14).
#brave_ordering(b11@10, a13, a15).
#brave_ordering(b12@10, a13, a16).
#brave_ordering(b13@10, a13, a17).
#brave_ordering(b14@10, a18, a19).
#brave_ordering(b15@10, a18, a20).
#brave_ordering(b16@10, a21, a22).
#brave_ordering(b17@10, a21, a23).
#brave_ordering(b18@10, a21, a24).
#brave_ordering(b19@10, a25, a26).
#brave_ordering(b20@10, a25, a27).
#brave_ordering(b21@10, a25, a28).
#brave_ordering(b22@10, a25, a29).
#brave_ordering(b23@10, a25, a30).
#brave_ordering(b24@10, a31, a32).
#brave_ordering(b25@10, a31, a33).
#brave_ordering(b26@10, a31, a34).
#brave_ordering(b27@10, a31, a35).
#brave_ordering(b28@10, a31, a36).
#brave_ordering(b29@10, a37, a38).
#brave_ordering(b30@10, a37, a39).
#brave_ordering(b31@10, a40, a41).
#brave_ordering(b32@10, a42, a43).
#brave_ordering(b33@10, a42, a44).
#brave_ordering(b34@10, a42, a45).
#brave_ordering(b35@10, a46, a47).
#brave_ordering(b36@10, a46, a48).
#brave_ordering(b37@10, a46, a49).
#brave_ordering(b38@10, a46, a50).
