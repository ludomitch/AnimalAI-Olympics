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
% #modeo(1, on(goal, platform)).
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
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:5.501756841258969
#pos(a1,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.0206710768601244
#pos(a2,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.7473690392295045
#pos(a3,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.14192448560283477
#pos(a4,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.14533061164977767
#pos(a5,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.1503771213073538
#pos(a6,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:19.326027352008456
#pos(a7,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.15856236786469344
#pos(a8,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.4893347931138634
#pos(a9,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.584206227176629
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.913111597704621
#pos(a11,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:8.571428571428571
#pos(a12,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-0.8265918367346938
#pos(a13,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-3.076071428571429
#pos(a14,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:24.110599078341014
#pos(a15,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6912442396313364
#pos(a16,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6912442396313364
#pos(a17,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6912442396313364
#pos(a18,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6912442396313364
#pos(a19,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:1.716359142150381
#pos(a20,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-0.23607738680844828
#pos(a21,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.27119986406528346
#pos(a22,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.4439883573528372
#pos(a23,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:21.39639639639639
#pos(a24,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a25,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a26,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a27,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a28,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a29,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:24.583795612204945
#pos(a30,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:1.7616719289763096
#pos(a31,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.20439479723214993
#pos(a32,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.28821259657306136
#pos(a33,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:10.360242857142858
#pos(a34,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:5.3720357142857145
#pos(a35,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.6641479591836736
#pos(a36,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.0186128571428568
#pos(a37,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:0.5613489795918368
#pos(a38,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.8911214285714286
#pos(a39,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.745286971093421
#pos(a40,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6389578163771711
#pos(a41,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6448321263989468
#pos(a42,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6463133640552997
#pos(a43,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:6.8170714285714284
#pos(a44,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:6.308357142857143
#pos(a45,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:3.9813428571428573
#pos(a46,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.3267888386673492
#pos(a47,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.3317923358754968
#pos(a48,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0006554495228527822
#pos(a49,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.014472644768731106
#pos(a50,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12145316804407737
#pos(a51,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12258097485195028
#pos(a52,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.1263112726400909
#pos(a53,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:5.738882362812553
#pos(a54,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:0.2507358843992511
#pos(a55,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4513201320132011
#pos(a56,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.45141802315824775
#pos(a57,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.45346534653465326
#pos(a58,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.45393522403087727
#pos(a59,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.45668316831683153
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a6, a7).
#brave_ordering(b6@10, a6, a8).
#brave_ordering(b7@10, a6, a9).
#brave_ordering(b8@10, a6, a10).
#brave_ordering(b9@10, a11, a12).
#brave_ordering(b10@10, a11, a13).
#brave_ordering(b11@10, a14, a15).
#brave_ordering(b12@10, a14, a16).
#brave_ordering(b13@10, a14, a17).
#brave_ordering(b14@10, a14, a18).
#brave_ordering(b15@10, a19, a20).
#brave_ordering(b16@10, a19, a21).
#brave_ordering(b17@10, a19, a22).
#brave_ordering(b18@10, a23, a24).
#brave_ordering(b19@10, a23, a25).
#brave_ordering(b20@10, a23, a26).
#brave_ordering(b21@10, a23, a27).
#brave_ordering(b22@10, a23, a28).
#brave_ordering(b23@10, a29, a30).
#brave_ordering(b24@10, a29, a31).
#brave_ordering(b25@10, a29, a32).
#brave_ordering(b26@10, a33, a34).
#brave_ordering(b27@10, a33, a35).
#brave_ordering(b28@10, a33, a36).
#brave_ordering(b29@10, a33, a37).
#brave_ordering(b30@10, a33, a38).
#brave_ordering(b31@10, a39, a40).
#brave_ordering(b32@10, a39, a41).
#brave_ordering(b33@10, a39, a42).
#brave_ordering(b34@10, a43, a44).
#brave_ordering(b35@10, a43, a45).
#brave_ordering(b36@10, a46, a47).
#brave_ordering(b37@10, a46, a48).
#brave_ordering(b38@10, a46, a49).
#brave_ordering(b39@10, a46, a50).
#brave_ordering(b40@10, a46, a51).
#brave_ordering(b41@10, a46, a52).
#brave_ordering(b42@10, a53, a54).
#brave_ordering(b43@10, a53, a55).
#brave_ordering(b44@10, a53, a56).
#brave_ordering(b45@10, a53, a57).
#brave_ordering(b46@10, a53, a58).
#brave_ordering(b47@10, a53, a59).
