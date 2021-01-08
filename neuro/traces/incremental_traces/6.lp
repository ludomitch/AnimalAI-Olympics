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
%%Value was:0.28423888139545694
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-0.821828052341915
#pos(a2,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:0.7860766813023344
#pos(a3,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:-0.5312330139017736
#pos(a4,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-0.8123590597270699
#pos(a5,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).}).
%%Value was:21.7431192660551
#pos(a6,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).}).
%%Value was:-2.752293577981648
#pos(a7,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).}).
%%Value was:-2.7522935779816518
#pos(a8,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-2.752293577981653
#pos(a9,
{},
{},
{goal(a).
initiate(interact(a)).
lava.}).
%%Value was:19.673333333333332
#pos(a10,
{},
{},
{goal(a).
initiate(avoid).
lava.}).
%%Value was:-0.14
#pos(a11,
{},
{},
{goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.14
#pos(a12,
{},
{},
{goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.14
#pos(a13,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:8.854889812007276
#pos(a14,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.5141919625811475
#pos(a15,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.2647153156795463
#pos(a16,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.132036282266455
#pos(a17,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-0.005604962992334172
#pos(a18,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.344198453608248
#pos(a19,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:22.62287953348559
#pos(a20,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.3792409875560845
#pos(a21,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:1.0769780136919855
#pos(a22,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:0.5763763422724454
#pos(a23,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:23.928571428571463
#pos(a24,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421046
#pos(a25,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421046
#pos(a26,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a27,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421055
#pos(a28,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:7.041076834956204
#pos(a29,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.11729179910998112
#pos(a30,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4520884520884507
#pos(a31,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4530209419882841
#pos(a32,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4533648170011794
#pos(a33,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.4542335880243243
#pos(a34,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4546930342384877
#pos(a35,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:9.300228053733226
#pos(a36,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:1.2495847411129417
#pos(a37,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-1.8918489257153859
#pos(a38,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:2.8049264659689603
#pos(a39,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.7571880089649845
#pos(a40,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.9742441930633887
#pos(a41,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.1253508827733778
#pos(a42,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.5825845100556193
#pos(a43,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6113883847549921
#pos(a44,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6122076023391826
#pos(a45,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6133705475810742
#pos(a46,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:4.81358533333334
#pos(a47,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.4563258064516134
#pos(a48,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.36517551020408234
#pos(a49,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.0375442176870748
#pos(a50,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.12706762589928064
#pos(a51,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.1324324324324326
#pos(a52,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:8.351718213058424
#pos(a53,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:7.343063625950228
#pos(a54,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:5.366304016323024
#pos(a55,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:21.227445813854626
#pos(a56,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.14
#pos(a57,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.756100647016532
#pos(a58,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.832830188679235
#pos(a59,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.8699382969971077
#pos(a60,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.2808226771653561
#pos(a61,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.15385306024096476
#pos(a62,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0063036866359447155
#pos(a63,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.04879342175066315
#pos(a64,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.10728630208333367
#pos(a65,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.10779426506024128
#pos(a66,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.11249430769230769
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a5, a8).
#brave_ordering(b6@10, a9, a10).
#brave_ordering(b7@10, a9, a11).
#brave_ordering(b8@10, a9, a12).
#brave_ordering(b9@10, a13, a14).
#brave_ordering(b10@10, a13, a15).
#brave_ordering(b11@10, a13, a16).
#brave_ordering(b12@10, a13, a17).
#brave_ordering(b13@10, a13, a18).
#brave_ordering(b14@10, a19, a20).
#brave_ordering(b15@10, a19, a21).
#brave_ordering(b16@10, a19, a22).
#brave_ordering(b17@10, a23, a24).
#brave_ordering(b18@10, a23, a25).
#brave_ordering(b19@10, a23, a26).
#brave_ordering(b20@10, a23, a27).
#brave_ordering(b21@10, a28, a29).
#brave_ordering(b22@10, a28, a30).
#brave_ordering(b23@10, a28, a31).
#brave_ordering(b24@10, a28, a32).
#brave_ordering(b25@10, a28, a33).
#brave_ordering(b26@10, a28, a34).
#brave_ordering(b27@10, a35, a36).
#brave_ordering(b28@10, a35, a37).
#brave_ordering(b29@10, a38, a39).
#brave_ordering(b30@10, a38, a40).
#brave_ordering(b31@10, a38, a41).
#brave_ordering(b32@10, a42, a43).
#brave_ordering(b33@10, a42, a44).
#brave_ordering(b34@10, a42, a45).
#brave_ordering(b35@10, a46, a47).
#brave_ordering(b36@10, a46, a48).
#brave_ordering(b37@10, a46, a49).
#brave_ordering(b38@10, a46, a50).
#brave_ordering(b39@10, a46, a51).
#brave_ordering(b40@10, a52, a53).
#brave_ordering(b41@10, a52, a54).
#brave_ordering(b42@10, a55, a56).
#brave_ordering(b43@10, a55, a57).
#brave_ordering(b44@10, a55, a58).
#brave_ordering(b45@10, a55, a59).
#brave_ordering(b46@10, a60, a61).
#brave_ordering(b47@10, a60, a62).
#brave_ordering(b48@10, a60, a63).
#brave_ordering(b49@10, a60, a64).
#brave_ordering(b50@10, a60, a65).
#brave_ordering(b51@10, a60, a66).
