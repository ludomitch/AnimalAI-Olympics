#modeo(1, initiate(rotate), (positive)).
#modeo(1, initiate(observe), (positive)).
#modeo(1, initiate(climb), (positive)).
% #modeo(1, initiate(collect), (positive)).
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
#maxp(7).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(rotate).}).
%%Value was:1.5330943847072818
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-1.5474147414741521
#pos(a2,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:1.3549929676511931
#pos(a3,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:-0.6704809286898847
#pos(a4,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-1.0811111111111142
#pos(a5,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:23.928571428571438
#pos(a6,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a7,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a8,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a9,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a10,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.582584510055627
#pos(a11,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6113883847549909
#pos(a12,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6122076023391817
#pos(a13,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6133705475810743
#pos(a14,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:21.34615384615383
#pos(a15,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.8846153846153855
#pos(a16,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.884615384615386
#pos(a17,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.884615384615386
#pos(a18,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:28.026315789473685
#pos(a19,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a20,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.6578947368421052
#pos(a21,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:21.452263374485636
#pos(a22,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:1.603508771929823
#pos(a23,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.430320150659131
#pos(a24,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:0.6486486486486461
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
#brave_ordering(b15@10, a21, a22).
#brave_ordering(b16@10, a21, a23).
#brave_ordering(b17@10, a21, a24).
