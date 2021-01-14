#modeo(1, initiate(rotate), (positive)).
#modeo(1, initiate(observe), (positive)).
#modeo(1, initiate(climb), (positive)).
#modeo(1, initiate(collect), (positive)).
#modeo(1, initiate(interact(var(x))), (positive)).
#modeo(1, initiate(explore(var(x))), (positive)).
#modeo(1, initiate(balance), (positive)).
#modeo(1, initiate(avoid), (positive)).
#modeo(1, initiate(drop(var(side))), (positive) ).
% #modeo(1, on(agent, platform)).
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
%%Value was:0.8622056224459964
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-1.6629931708816137
#pos(a2,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:21.987068637721546
#pos(a3,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:1.4264529191144737
#pos(a4,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.3722706517227035
#pos(a5,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:0.599316044457108
#pos(a6,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:9.300228053733187
#pos(a7,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:1.2495847411129406
#pos(a8,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-1.891848925715386
#pos(a9,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:23.928571428571455
#pos(a10,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a11,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a12,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421054
#pos(a13,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421054
#pos(a14,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:8.333660932314313
#pos(a15,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.169212628572368
#pos(a16,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-1.6032794358417062
#pos(a17,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.8830014380836566
#pos(a18,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:21.969696969696944
#pos(a19,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636358
#pos(a20,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636362
#pos(a21,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.136363636363637
#pos(a22,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636371
#pos(a23,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636371
#pos(a24,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:8.351718213058424
#pos(a25,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:7.343063625950226
#pos(a26,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:5.366304016323024
#pos(a27,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.582584510055621
#pos(a28,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6113883847549899
#pos(a29,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6122076023391806
#pos(a30,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6133705475810729
#pos(a31,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:21.346153846153822
#pos(a32,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.8846153846153744
#pos(a33,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.884615384615377
#pos(a34,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.884615384615386
#pos(a35,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:7.041076834956225
#pos(a36,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.11729179910998105
#pos(a37,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.45208845208845144
#pos(a38,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4530209419882848
#pos(a39,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.45336481700118014
#pos(a40,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.4542335880243249
#pos(a41,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.4546930342384881
#pos(a42,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:1.128776655443319
#pos(a43,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:-0.6468236618383238
#pos(a44,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-1.007955693296604
#pos(a45,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:8.85488981200728
#pos(a46,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.514191962581144
#pos(a47,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.2647153156795437
#pos(a48,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.1320362822664496
#pos(a49,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-0.005604962992334178
#pos(a50,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.3441984536082483
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a2, a5).
#brave_ordering(b4@10, a6, a7).
#brave_ordering(b5@10, a6, a8).
#brave_ordering(b6@10, a9, a10).
#brave_ordering(b7@10, a9, a11).
#brave_ordering(b8@10, a9, a12).
#brave_ordering(b9@10, a9, a13).
#brave_ordering(b10@10, a14, a15).
#brave_ordering(b11@10, a14, a16).
#brave_ordering(b12@10, a14, a17).
#brave_ordering(b13@10, a18, a19).
#brave_ordering(b14@10, a18, a20).
#brave_ordering(b15@10, a18, a21).
#brave_ordering(b16@10, a18, a22).
#brave_ordering(b17@10, a18, a23).
#brave_ordering(b18@10, a24, a25).
#brave_ordering(b19@10, a24, a26).
#brave_ordering(b20@10, a27, a28).
#brave_ordering(b21@10, a27, a29).
#brave_ordering(b22@10, a27, a30).
#brave_ordering(b23@10, a31, a32).
#brave_ordering(b24@10, a31, a33).
#brave_ordering(b25@10, a31, a34).
#brave_ordering(b26@10, a35, a36).
#brave_ordering(b27@10, a35, a37).
#brave_ordering(b28@10, a35, a38).
#brave_ordering(b29@10, a35, a39).
#brave_ordering(b30@10, a35, a40).
#brave_ordering(b31@10, a35, a41).
#brave_ordering(b32@10, a42, a43).
#brave_ordering(b33@10, a42, a44).
#brave_ordering(b34@10, a45, a46).
#brave_ordering(b35@10, a45, a47).
#brave_ordering(b36@10, a45, a48).
#brave_ordering(b37@10, a45, a49).
#brave_ordering(b38@10, a45, a50).
