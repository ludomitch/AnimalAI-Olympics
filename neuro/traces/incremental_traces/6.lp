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
{goal(a).
initiate(interact(a)).
lava.}).
%%Value was:19.673333333333332
#pos(a3,
{},
{},
{goal(a).
initiate(avoid).
lava.}).
%%Value was:-0.14
#pos(a4,
{},
{},
{goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.14
#pos(a5,
{},
{},
{goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.14
#pos(a6,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:4.81358533333334
#pos(a7,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.4563258064516134
#pos(a8,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.36517551020408234
#pos(a9,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.0375442176870748
#pos(a10,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.12706762589928064
#pos(a11,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.1324324324324326
#pos(a12,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:22.62287953348559
#pos(a13,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.3792409875560845
#pos(a14,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:1.0769780136919855
#pos(a15,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:0.5763763422724454
#pos(a16,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:9.300228053733226
#pos(a17,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:1.2495847411129417
#pos(a18,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-1.8918489257153859
#pos(a19,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:23.928571428571463
#pos(a20,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421046
#pos(a21,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421046
#pos(a22,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a23,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421055
#pos(a24,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:2.8049264659689603
#pos(a25,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.7571880089649845
#pos(a26,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.9742441930633887
#pos(a27,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.1253508827733778
#pos(a28,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:21.96969696969693
#pos(a29,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636342
#pos(a30,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.136363636363636
#pos(a31,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636362
#pos(a32,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.136363636363637
#pos(a33,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636374
#pos(a34,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:8.351718213058424
#pos(a35,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:7.343063625950228
#pos(a36,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:5.366304016323024
#pos(a37,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.5825845100556193
#pos(a38,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6113883847549921
#pos(a39,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6122076023391826
#pos(a40,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6133705475810742
#pos(a41,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:21.227445813854626
#pos(a42,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.14
#pos(a43,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.756100647016532
#pos(a44,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.832830188679235
#pos(a45,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.8699382969971077
#pos(a46,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:7.041076834956204
#pos(a47,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.11729179910998112
#pos(a48,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4520884520884507
#pos(a49,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4530209419882841
#pos(a50,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4533648170011794
#pos(a51,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.4542335880243243
#pos(a52,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4546930342384877
#pos(a53,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.2808226771653561
#pos(a54,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.15385306024096476
#pos(a55,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0063036866359447155
#pos(a56,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.04879342175066315
#pos(a57,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.10728630208333367
#pos(a58,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.10779426506024128
#pos(a59,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.11249430769230769
#pos(a60,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:0.7860766813023344
#pos(a61,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:-0.5312330139017736
#pos(a62,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-0.8123590597270699
#pos(a63,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:8.854889812007276
#pos(a64,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.5141919625811475
#pos(a65,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.2647153156795463
#pos(a66,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.132036282266455
#pos(a67,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-0.005604962992334172
#pos(a68,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.344198453608248
#pos(a69,
{},
{},
{initiate(rotate).}).
%%Value was:0.010354595161532685
#pos(a70,
{},
{},
{initiate(observe).}).
%%Value was:-0.28650436850416605
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a2, a5).
#brave_ordering(b4@10, a6, a7).
#brave_ordering(b5@10, a6, a8).
#brave_ordering(b6@10, a6, a9).
#brave_ordering(b7@10, a6, a10).
#brave_ordering(b8@10, a6, a11).
#brave_ordering(b9@10, a12, a13).
#brave_ordering(b10@10, a12, a14).
#brave_ordering(b11@10, a12, a15).
#brave_ordering(b12@10, a16, a17).
#brave_ordering(b13@10, a16, a18).
#brave_ordering(b14@10, a19, a20).
#brave_ordering(b15@10, a19, a21).
#brave_ordering(b16@10, a19, a22).
#brave_ordering(b17@10, a19, a23).
#brave_ordering(b18@10, a24, a25).
#brave_ordering(b19@10, a24, a26).
#brave_ordering(b20@10, a24, a27).
#brave_ordering(b21@10, a28, a29).
#brave_ordering(b22@10, a28, a30).
#brave_ordering(b23@10, a28, a31).
#brave_ordering(b24@10, a28, a32).
#brave_ordering(b25@10, a28, a33).
#brave_ordering(b26@10, a34, a35).
#brave_ordering(b27@10, a34, a36).
#brave_ordering(b28@10, a37, a38).
#brave_ordering(b29@10, a37, a39).
#brave_ordering(b30@10, a37, a40).
#brave_ordering(b31@10, a41, a42).
#brave_ordering(b32@10, a41, a43).
#brave_ordering(b33@10, a41, a44).
#brave_ordering(b34@10, a41, a45).
#brave_ordering(b35@10, a46, a47).
#brave_ordering(b36@10, a46, a48).
#brave_ordering(b37@10, a46, a49).
#brave_ordering(b38@10, a46, a50).
#brave_ordering(b39@10, a46, a51).
#brave_ordering(b40@10, a46, a52).
#brave_ordering(b41@10, a53, a54).
#brave_ordering(b42@10, a53, a55).
#brave_ordering(b43@10, a53, a56).
#brave_ordering(b44@10, a53, a57).
#brave_ordering(b45@10, a53, a58).
#brave_ordering(b46@10, a53, a59).
#brave_ordering(b47@10, a60, a61).
#brave_ordering(b48@10, a60, a62).
#brave_ordering(b49@10, a63, a64).
#brave_ordering(b50@10, a63, a65).
#brave_ordering(b51@10, a63, a66).
#brave_ordering(b52@10, a63, a67).
#brave_ordering(b53@10, a63, a68).
#brave_ordering(b54@10, a69, a70).
