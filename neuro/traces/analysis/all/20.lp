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
%%Value was:5.413652312599684
#pos(a1,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.7065015231681908
#pos(a2,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.5152076318742991
#pos(a3,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.15147855365246685
#pos(a4,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.1533094098883574
#pos(a5,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.1598138245197069
#pos(a6,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:19.634840468173802
#pos(a7,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.16835016835016836
#pos(a8,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.6032382650029704
#pos(a9,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.701418951418951
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.9693868509657984
#pos(a11,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:7.605690476190479
#pos(a12,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-0.535773809523809
#pos(a13,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-0.8291208791208795
#pos(a14,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:23.928571428571438
#pos(a15,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a16,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a17,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a18,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a19,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:1.4183631985489586
#pos(a20,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-0.26121429347235803
#pos(a21,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.27792545336405006
#pos(a22,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.46568441305283403
#pos(a23,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:21.969696969696958
#pos(a24,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636356
#pos(a25,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636362
#pos(a26,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636362
#pos(a27,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636365
#pos(a28,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636365
#pos(a29,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:25.04674779806062
#pos(a30,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:1.9325549773224182
#pos(a31,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.05075433979088535
#pos(a32,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.07878214396393228
#pos(a33,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:9.468257142857144
#pos(a34,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:7.345714285714287
#pos(a35,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.898692307692308
#pos(a36,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:2.6124000000000005
#pos(a37,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:0.45781845238095265
#pos(a38,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-3.2123571428571434
#pos(a39,
{},
{},
{goal(a).
initiate(interact(a)).
lava.}).
%%Value was:19.60718294051627
#pos(a40,
{},
{},
{goal(a).
initiate(avoid).
lava.}).
%%Value was:-0.16835016835016836
#pos(a41,
{},
{},
{goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.16835016835016836
#pos(a42,
{},
{},
{goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.16835016835016836
#pos(a43,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.582584510055627
#pos(a44,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6113883847549909
#pos(a45,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6122076023391817
#pos(a46,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6133705475810743
#pos(a47,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:6.698571428571429
#pos(a48,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:5.907857142857144
#pos(a49,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:3.283714285714286
#pos(a50,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.4735091820681339
#pos(a51,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.233342631334263
#pos(a52,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:0.04351459256597598
#pos(a53,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0363523654625351
#pos(a54,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12935487632457307
#pos(a55,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.13001898269387957
#pos(a56,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.1345481652685042
#pos(a57,
{},
{},
{goal1.
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:1.6571428571428573
#pos(a58,
{},
{},
{goal1.
initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-3.6642857142857146
#pos(a59,
{},
{},
{goal1.
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-3.857142857142857
#pos(a60,
{},
{},
{goal1.
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-4.285714285714286
#pos(a61,
{},
{},
{goal1.
initiate(collect).
on(agent,platform).
platform.}).
%%Value was:-4.523809523809524
#pos(a62,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:6.648148148148151
#pos(a63,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:0.022675736961451202
#pos(a64,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.5059829059829061
#pos(a65,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.5072463768115943
#pos(a66,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.5086206896551724
#pos(a67,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.5092592592592594
#pos(a68,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.5117521367521368
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
#brave_ordering(b36@10, a43, a46).
#brave_ordering(b37@10, a47, a48).
#brave_ordering(b38@10, a47, a49).
#brave_ordering(b39@10, a50, a51).
#brave_ordering(b40@10, a50, a52).
#brave_ordering(b41@10, a50, a53).
#brave_ordering(b42@10, a50, a54).
#brave_ordering(b43@10, a50, a55).
#brave_ordering(b44@10, a50, a56).
#brave_ordering(b45@10, a57, a58).
#brave_ordering(b46@10, a57, a59).
#brave_ordering(b47@10, a57, a60).
#brave_ordering(b48@10, a57, a61).
#brave_ordering(b49@10, a62, a63).
#brave_ordering(b50@10, a62, a64).
#brave_ordering(b51@10, a62, a65).
#brave_ordering(b52@10, a62, a66).
#brave_ordering(b53@10, a62, a67).
#brave_ordering(b54@10, a62, a68).
