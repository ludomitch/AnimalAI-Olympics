
present(X):-goal(X).
present(X):- visible(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).
#modeo(1, initiate(rotate)).
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(explore(var(x),var(y)))).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, initiate(avoid(var(x),var(y)))).
#modeo(1, on(agent, var(x))).
#modeo(1, occludes(var(x),var(y))).
#modeo(1, goal(var(x))).
#modeo(1, wall(var(x))).
#modeo(1, platform(var(x))).
#modeo(1, lava(var(x))).
#modeo(1, ramp(var(x))).

#weight(1).
#weight(-1).
#maxv(4).
#maxp(6).
#pos(a0,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-7.282075471698115
#pos(a1,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-9.491176470588238
#pos(a2,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a3,
{},
{},
{wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.092307692307692
#pos(a4,
{},
{},
{wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.162962962962963
#pos(a5,
{},
{},
{wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.407894736842104
#pos(a6,
{},
{},
{wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.626470588235293
#pos(a7,
{},
{},
{wall(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a8,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-6.333333333333333
#pos(a9,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.0
#pos(a10,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.25
#pos(a11,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.75
#pos(a12,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a13,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.333333333333334
#pos(a14,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.5
#pos(a15,
{},
{},
{ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.833333333333334
#pos(a16,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a17,
{},
{},
{wall(b).
wall(c).
wall(d).
goal(a).
initiate(climb(c)).}).
%%Value was:-9.0
#pos(a18,
{},
{},
{wall(b).
wall(c).
wall(d).
goal(a).
initiate(climb(d)).}).
%%Value was:-9.0
#pos(a19,
{},
{},
{wall(b).
wall(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-10.0
#pos(a20,
{},
{},
{wall(b).
wall(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a21,
{},
{},
{wall(b).
wall(c).
goal(a).
initiate(rotate).}).
%%Value was:-10.0
#pos(a22,
{},
{},
{wall(b).
wall(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-10.0
#pos(a23,
{},
{},
{lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:10.0
#pos(a24,
{},
{},
{lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-0.1
#pos(a25,
{},
{},
{lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a26,
{},
{},
{lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a27,
{},
{},
{lava(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a28,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-8.241935483870966
#pos(a29,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-8.40294117647059
#pos(a30,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.468571428571428
#pos(a31,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.516666666666667
#pos(a32,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.705882352941174
#pos(a33,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.25
#pos(a34,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.5
#pos(a35,
{},
{},
{platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.583333333333334
#pos(a36,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.75
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a3, a4).
#brave_ordering(b3@10, a3, a5).
#brave_ordering(b4@10, a3, a6).
#brave_ordering(b5@10, a3, a7).
#brave_ordering(b6@10, a8, a9).
#brave_ordering(b7@10, a8, a10).
#brave_ordering(b8@10, a8, a11).
#brave_ordering(b9@10, a8, a12).
#brave_ordering(b10@10, a13, a14).
#brave_ordering(b11@10, a13, a15).
#brave_ordering(b12@10, a13, a16).
#brave_ordering(b13@10, a17, a18).
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
#brave_ordering(b25@10, a33, a34).
#brave_ordering(b26@10, a33, a35).
#brave_ordering(b27@10, a33, a36).
