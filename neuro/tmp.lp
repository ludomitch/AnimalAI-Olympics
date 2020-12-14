
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
{ramp(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-4.7829690000000005
#pos(a1,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-5.703495525000001
#pos(a2,
{},
{},
{ramp(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.100000000000001
#pos(a3,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.2805
#pos(a4,
{},
{},
{ramp(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.0
#pos(a5,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.0
#pos(a6,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-5.217602445000001
#pos(a7,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-5.388392200500001
#pos(a8,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-5.9049000000000005
#pos(a9,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.481323000000001
#pos(a10,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-6.561
#pos(a11,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-6.9639750000000005
#pos(a12,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-7.098300000000001
#pos(a13,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.2236025
#pos(a14,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-7.317
#pos(a15,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.368300000000001
#pos(a16,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-7.695000000000001
#pos(a17,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.7805
#pos(a18,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-7.7805
#pos(a19,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.100000000000001
#pos(a20,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.145
#pos(a21,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-8.395
#pos(a22,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-9.0
#pos(a23,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.0
#pos(a24,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a25,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-10.0
#pos(a26,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-9.0
#pos(a27,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a28,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.100000000000001
#pos(a29,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.100000000000001
#pos(a30,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.115
#pos(a31,
{},
{},
{platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.2805
#pos(a32,
{},
{},
{platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.311666666666666
#pos(a33,
{},
{},
{platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.5975
#pos(a34,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.8
#pos(a35,
{},
{},
{platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.5
#pos(a36,
{},
{},
{platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.516666666666667
#pos(a37,
{},
{},
{platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.8
#pos(a38,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a6, a7).
#brave_ordering(b6@10, a6, a8).
#brave_ordering(b7@10, a6, a9).
#brave_ordering(b8@10, a6, a10).
#brave_ordering(b9@10, a6, a11).
#brave_ordering(b10@10, a6, a12).
#brave_ordering(b11@10, a6, a13).
#brave_ordering(b12@10, a6, a14).
#brave_ordering(b13@10, a6, a15).
#brave_ordering(b14@10, a6, a16).
#brave_ordering(b15@10, a6, a17).
#brave_ordering(b16@10, a6, a18).
#brave_ordering(b17@10, a6, a19).
#brave_ordering(b18@10, a6, a20).
#brave_ordering(b19@10, a6, a21).
#brave_ordering(b20@10, a6, a22).
#brave_ordering(b21@10, a6, a23).
#brave_ordering(b22@10, a6, a24).
#brave_ordering(b23@10, a6, a25).
#brave_ordering(b24@10, a26, a27).
#brave_ordering(b25@10, a28, a29).
#brave_ordering(b26@10, a28, a30).
#brave_ordering(b27@10, a28, a31).
#brave_ordering(b28@10, a28, a32).
#brave_ordering(b29@10, a28, a33).
#brave_ordering(b30@10, a28, a34).
#brave_ordering(b31@10, a28, a35).
#brave_ordering(b32@10, a28, a36).
#brave_ordering(b33@10, a28, a37).
#brave_ordering(b34@10, a28, a38).
