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
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:2.111606323871118
#pos(a1,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.34158459833794824
#pos(a2,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.35007038681039726
#pos(a3,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.3509283979178696
#pos(a4,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).
wall(c).}).
%%Value was:28.479259259259265
#pos(a5,
{},
{},
{goal(a).
initiate(rotate).
wall(b).
wall(c).}).
%%Value was:2.295454545454545
#pos(a6,
{},
{},
{goal(a).
initiate(observe).
wall(b).
wall(c).}).
%%Value was:0.8222857142857138
#pos(a7,
{},
{},
{goal(a).
initiate(explore(b)).
wall(c).
wall(b).}).
%%Value was:-0.1357575757575758
#pos(a8,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).
wall(c).}).
%%Value was:-0.1362307692307693
#pos(a9,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).}).
%%Value was:23.353841540404044
#pos(a10,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).}).
%%Value was:0.8236083638170082
#pos(a11,
{},
{},
{goal(a).
initiate(rotate).
wall(b).}).
%%Value was:0.2724857268335532
#pos(a12,
{},
{},
{goal(a).
initiate(observe).
wall(b).}).
%%Value was:-0.7036167402543487
#pos(a13,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:19.451363636363663
#pos(a14,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:0.1615974145891049
#pos(a15,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.36153508771929754
#pos(a16,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.3678238866396755
#pos(a17,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.3772970561998209
#pos(a18,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).}).
%%Value was:14.719999999999999
#pos(a19,
{},
{},
{goal(a).
initiate(avoid).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a20,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a21,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a22,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).
wall(c).}).
%%Value was:29.58
#pos(a23,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a24,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a25,
{},
{},
{goal(a).
initiate(avoid).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a26,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).}).
%%Value was:21.743119266055036
#pos(a27,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-2.7522935779816518
#pos(a28,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).}).
%%Value was:-2.752293577981652
#pos(a29,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).}).
%%Value was:-2.752293577981653
#pos(a30,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:23.568745304282483
#pos(a31,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:3.8768115942028976
#pos(a32,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:2.7666666666666675
#pos(a33,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.
wall(b).
wall(a).
wall(c).}).
%%Value was:7.116446280991738
#pos(a34,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(a).}).
%%Value was:-0.11729179910998105
#pos(a35,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.45128516187732143
#pos(a36,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.45202261852979514
#pos(a37,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.4521724899762698
#pos(a38,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(d).}).
%%Value was:-0.4530209419882848
#pos(a39,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.4531680440771343
#pos(a40,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:4.81358533333334
#pos(a41,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.4563258064516134
#pos(a42,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.36517551020408234
#pos(a43,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.0375442176870748
#pos(a44,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.12706762589928064
#pos(a45,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.1324324324324326
#pos(a46,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:9.300228053733216
#pos(a47,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:1.24958474111294
#pos(a48,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-1.8918489257153868
#pos(a49,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:21.346153846153847
#pos(a50,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.732136752136752
#pos(a51,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.884615384615385
#pos(a52,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.8846153846153855
#pos(a53,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:8.85488981200728
#pos(a54,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.5141919625811364
#pos(a55,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.2647153156795374
#pos(a56,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.1320362822664425
#pos(a57,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-0.005604962992334232
#pos(a58,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.3441984536082474
#pos(a59,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:0.5934326794308208
#pos(a60,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.47283175518371817
#pos(a61,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.5740047025620544
#pos(a62,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-0.673263254115985
#pos(a63,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:8.351718213058422
#pos(a64,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:7.343063625950223
#pos(a65,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:5.366304016323026
#pos(a66,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:1.330520217391306
#pos(a67,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.1623251116625321
#pos(a68,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.004023004694835711
#pos(a69,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.04879342175066315
#pos(a70,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.10676250666666702
#pos(a71,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.10715995049504987
#pos(a72,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11206521052631584
#pos(a73,
{},
{},
{initiate(explore(a)).
occludes(a).
wall(a).}).
%%Value was:0.17330189310321595
#pos(a74,
{},
{},
{initiate(rotate).
occludes(a).
wall(a).}).
%%Value was:-0.3413049174689411
#pos(a75,
{},
{},
{initiate(observe).
occludes(a).
wall(a).}).
%%Value was:-0.46203673094582454
#pos(a76,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:24.375
#pos(a77,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-0.8058620689655173
#pos(a78,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.875
#pos(a79,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.}).
%%Value was:-1.875
#pos(a80,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.875
#pos(a81,
{},
{},
{initiate(rotate).}).
%%Value was:0.010354595161532685
#pos(a82,
{},
{},
{initiate(observe).}).
%%Value was:-0.28650436850416605
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a4, a5).
#brave_ordering(b4@10, a4, a6).
#brave_ordering(b5@10, a4, a7).
#brave_ordering(b6@10, a4, a8).
#brave_ordering(b7@10, a9, a10).
#brave_ordering(b8@10, a9, a11).
#brave_ordering(b9@10, a9, a12).
#brave_ordering(b10@10, a13, a14).
#brave_ordering(b11@10, a13, a15).
#brave_ordering(b12@10, a13, a16).
#brave_ordering(b13@10, a13, a17).
#brave_ordering(b14@10, a18, a19).
#brave_ordering(b15@10, a18, a20).
#brave_ordering(b16@10, a18, a21).
#brave_ordering(b17@10, a22, a23).
#brave_ordering(b18@10, a22, a24).
#brave_ordering(b19@10, a22, a25).
#brave_ordering(b20@10, a26, a27).
#brave_ordering(b21@10, a26, a28).
#brave_ordering(b22@10, a26, a29).
#brave_ordering(b23@10, a30, a31).
#brave_ordering(b24@10, a30, a32).
#brave_ordering(b25@10, a33, a34).
#brave_ordering(b26@10, a33, a35).
#brave_ordering(b27@10, a33, a36).
#brave_ordering(b28@10, a33, a37).
#brave_ordering(b29@10, a33, a38).
#brave_ordering(b30@10, a33, a39).
#brave_ordering(b31@10, a40, a41).
#brave_ordering(b32@10, a40, a42).
#brave_ordering(b33@10, a40, a43).
#brave_ordering(b34@10, a40, a44).
#brave_ordering(b35@10, a40, a45).
#brave_ordering(b36@10, a46, a47).
#brave_ordering(b37@10, a46, a48).
#brave_ordering(b38@10, a49, a50).
#brave_ordering(b39@10, a49, a51).
#brave_ordering(b40@10, a49, a52).
#brave_ordering(b41@10, a53, a54).
#brave_ordering(b42@10, a53, a55).
#brave_ordering(b43@10, a53, a56).
#brave_ordering(b44@10, a53, a57).
#brave_ordering(b45@10, a53, a58).
#brave_ordering(b46@10, a59, a60).
#brave_ordering(b47@10, a59, a61).
#brave_ordering(b48@10, a59, a62).
#brave_ordering(b49@10, a63, a64).
#brave_ordering(b50@10, a63, a65).
#brave_ordering(b51@10, a66, a67).
#brave_ordering(b52@10, a66, a68).
#brave_ordering(b53@10, a66, a69).
#brave_ordering(b54@10, a66, a70).
#brave_ordering(b55@10, a66, a71).
#brave_ordering(b56@10, a66, a72).
#brave_ordering(b57@10, a73, a74).
#brave_ordering(b58@10, a73, a75).
#brave_ordering(b59@10, a76, a77).
#brave_ordering(b60@10, a76, a78).
#brave_ordering(b61@10, a76, a79).
#brave_ordering(b62@10, a76, a80).
#brave_ordering(b63@10, a81, a82).
