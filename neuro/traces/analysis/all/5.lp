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
{initiate(rotate).}).
%%Value was:0.03964074188552914
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-0.14292625618925153
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
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:20.0
#pos(a9,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.11904761904761904
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.5297619047619047
#pos(a11,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.5297619047619047
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-3.333333333333333
#pos(a13,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:8.333333333333334
#pos(a14,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-3.60525
#pos(a15,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-3.9435000000000002
#pos(a16,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:27.0
#pos(a17,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.0
#pos(a18,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.0
#pos(a19,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.0
#pos(a20,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.0
#pos(a21,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:2.2516893675430256
#pos(a22,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.11607142857142858
#pos(a23,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.22321428571428575
#pos(a24,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-0.3126385809312639
#pos(a25,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:0.1978045033906563
#pos(a26,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:0.1585426345334886
#pos(a27,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-0.6861335420786647
#pos(a28,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:21.89922480620155
#pos(a29,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.1627906976744187
#pos(a30,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.1627906976744187
#pos(a31,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.1627906976744187
#pos(a32,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.1627906976744187
#pos(a33,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.1627906976744187
#pos(a34,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:22.45341429254629
#pos(a35,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.30047425474254746
#pos(a36,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.3760699136494468
#pos(a37,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-1.2397357723577234
#pos(a38,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:8.785
#pos(a39,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:7.335
#pos(a40,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:6.478333333333334
#pos(a41,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:0.9368999999999995
#pos(a42,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-3.5012250000000007
#pos(a43,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-4.050000000000001
#pos(a44,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:4.5608695652173905
#pos(a45,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.9176470588235296
#pos(a46,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.9266666666666669
#pos(a47,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.9500000000000002
#pos(a48,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.0669379144062687
#pos(a49,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.16645408163265316
#pos(a50,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:0.13351865488463438
#pos(a51,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0903929851510496
#pos(a52,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.09146453373015867
#pos(a53,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0931751253132832
#pos(a54,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.09547619047619041
#pos(a55,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:7.91130820399113
#pos(a56,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:2.445993031358885
#pos(a57,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.0975609756097562
#pos(a58,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.0975609756097562
#pos(a59,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.128048780487805
#pos(a60,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.132404181184669
#pos(a61,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-1.1585365853658538
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a2, a5).
#brave_ordering(b4@10, a2, a6).
#brave_ordering(b5@10, a2, a7).
#brave_ordering(b6@10, a8, a9).
#brave_ordering(b7@10, a8, a10).
#brave_ordering(b8@10, a8, a11).
#brave_ordering(b9@10, a8, a12).
#brave_ordering(b10@10, a13, a14).
#brave_ordering(b11@10, a13, a15).
#brave_ordering(b12@10, a16, a17).
#brave_ordering(b13@10, a16, a18).
#brave_ordering(b14@10, a16, a19).
#brave_ordering(b15@10, a16, a20).
#brave_ordering(b16@10, a21, a22).
#brave_ordering(b17@10, a21, a23).
#brave_ordering(b18@10, a21, a24).
#brave_ordering(b19@10, a25, a26).
#brave_ordering(b20@10, a25, a27).
#brave_ordering(b21@10, a28, a29).
#brave_ordering(b22@10, a28, a30).
#brave_ordering(b23@10, a28, a31).
#brave_ordering(b24@10, a28, a32).
#brave_ordering(b25@10, a28, a33).
#brave_ordering(b26@10, a34, a35).
#brave_ordering(b27@10, a34, a36).
#brave_ordering(b28@10, a34, a37).
#brave_ordering(b29@10, a38, a39).
#brave_ordering(b30@10, a38, a40).
#brave_ordering(b31@10, a38, a41).
#brave_ordering(b32@10, a38, a42).
#brave_ordering(b33@10, a38, a43).
#brave_ordering(b34@10, a44, a45).
#brave_ordering(b35@10, a44, a46).
#brave_ordering(b36@10, a44, a47).
#brave_ordering(b37@10, a48, a49).
#brave_ordering(b38@10, a48, a50).
#brave_ordering(b39@10, a48, a51).
#brave_ordering(b40@10, a48, a52).
#brave_ordering(b41@10, a48, a53).
#brave_ordering(b42@10, a48, a54).
#brave_ordering(b43@10, a55, a56).
#brave_ordering(b44@10, a55, a57).
#brave_ordering(b45@10, a55, a58).
#brave_ordering(b46@10, a55, a59).
#brave_ordering(b47@10, a55, a60).
#brave_ordering(b48@10, a55, a61).
