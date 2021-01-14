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
#maxp(10).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(rotate).}).
%%Value was:1.11422618012935
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-1.63380700861227
#pos(a2,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:1.3549929676511923
#pos(a3,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:-0.6704809286898862
#pos(a4,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-1.0811111111111158
#pos(a5,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:23.92857142857144
#pos(a6,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421051
#pos(a7,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a8,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421054
#pos(a9,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421054
#pos(a10,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.582584510055624
#pos(a11,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6113883847549897
#pos(a12,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6122076023391803
#pos(a13,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6133705475810731
#pos(a14,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:21.346153846153822
#pos(a15,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.884615384615378
#pos(a16,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.884615384615382
#pos(a17,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.884615384615386
#pos(a18,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:17.61510017885493
#pos(a19,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.2728454512570084
#pos(a20,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-1.6605086599660663
#pos(a21,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-3.0389461626575036
#pos(a22,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:21.969696969696972
#pos(a23,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636351
#pos(a24,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636354
#pos(a25,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636356
#pos(a26,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636358
#pos(a27,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.1363636363636365
#pos(a28,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:8.85488981200728
#pos(a29,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.5141919625811364
#pos(a30,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.2647153156795374
#pos(a31,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.1320362822664425
#pos(a32,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-0.005604962992334232
#pos(a33,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.3441984536082474
#pos(a34,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:21.452263374485547
#pos(a35,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:1.603508771929822
#pos(a36,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.43032015065913
#pos(a37,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:0.6486486486486455
#pos(a38,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:9.300228053733216
#pos(a39,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:1.24958474111294
#pos(a40,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-1.8918489257153868
#pos(a41,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:8.351718213058422
#pos(a42,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:7.343063625950223
#pos(a43,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:5.366304016323026
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a5, a8).
#brave_ordering(b6@10, a5, a9).
#brave_ordering(b7@10, a10, a11).
#brave_ordering(b8@10, a10, a12).
#brave_ordering(b9@10, a10, a13).
#brave_ordering(b10@10, a14, a15).
#brave_ordering(b11@10, a14, a16).
#brave_ordering(b12@10, a14, a17).
#brave_ordering(b13@10, a18, a19).
#brave_ordering(b14@10, a18, a20).
#brave_ordering(b15@10, a18, a21).
#brave_ordering(b16@10, a22, a23).
#brave_ordering(b17@10, a22, a24).
#brave_ordering(b18@10, a22, a25).
#brave_ordering(b19@10, a22, a26).
#brave_ordering(b20@10, a22, a27).
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
#brave_ordering(b31@10, a41, a42).
#brave_ordering(b32@10, a41, a43).
