
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
{platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-7.290000000000001
#pos(a1,
{},
{},
{platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.7805
#pos(a2,
{},
{},
{platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.13
#pos(a3,
{},
{},
{platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.55
#pos(a4,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.55
#pos(a5,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.0
#pos(a6,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a7,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.5
#pos(a8,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a9,
{},
{},
{platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a10,
{},
{},
{platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a11,
{},
{},
{platform(f).
lava(b).
lava(c).
lava(d).
lava(e).
ramp(g).
goal(a).
initiate(explore(e,g)).}).
%%Value was:-5.9049000000000005
#pos(a12,
{},
{},
{platform(f).
lava(b).
lava(c).
lava(d).
lava(e).
ramp(g).
goal(a).
initiate(avoid(f,d)).}).
%%Value was:-10.0
#pos(a13,
{},
{},
{lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:10.0
#pos(a14,
{},
{},
{lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.561250000000001
#pos(a15,
{},
{},
{lava(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.64
#pos(a16,
{},
{},
{lava(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.0
#pos(a17,
{},
{},
{lava(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-9.0
#pos(a18,
{},
{},
{lava(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a19,
{},
{},
{lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a20,
{},
{},
{lava(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a21,
{},
{},
{lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a22,
{},
{},
{lava(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a23,
{},
{},
{lava(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a24,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(b).
goal(a).
initiate(balance(a,e)).}).
%%Value was:-7.290000000000001
#pos(a25,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(b).
goal(a).
initiate(explore(d,e)).}).
%%Value was:-8.100000000000001
#pos(a26,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-8.478
#pos(a27,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-9.355555555555556
#pos(a28,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-9.705625
#pos(a29,
{},
{},
{wall(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.55
#pos(a30,
{},
{},
{wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.700000000000001
#pos(a31,
{},
{},
{wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.700000000000001
#pos(a32,
{},
{},
{wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.0
#pos(a33,
{},
{},
{wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.0
#pos(a34,
{},
{},
{wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a35,
{},
{},
{wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-10.0
#pos(a36,
{},
{},
{wall(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a37,
{},
{},
{wall(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a38,
{},
{},
{wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a39,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a40,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a41,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-6.658470000000001
#pos(a42,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-7.074000000000001
#pos(a43,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-7.290000000000001
#pos(a44,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-7.290000000000001
#pos(a45,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-7.290000000000001
#pos(a46,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-7.290000000000001
#pos(a47,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-7.830000000000001
#pos(a48,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-8.100000000000001
#pos(a49,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.100000000000001
#pos(a50,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.100000000000001
#pos(a51,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-8.100000000000001
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a0, a6).
#brave_ordering(b6@10, a0, a7).
#brave_ordering(b7@10, a0, a8).
#brave_ordering(b8@10, a0, a9).
#brave_ordering(b9@10, a0, a10).
#brave_ordering(b10@10, a11, a12).
#brave_ordering(b11@10, a13, a14).
#brave_ordering(b12@10, a13, a15).
#brave_ordering(b13@10, a13, a16).
#brave_ordering(b14@10, a13, a17).
#brave_ordering(b15@10, a13, a18).
#brave_ordering(b16@10, a13, a19).
#brave_ordering(b17@10, a13, a20).
#brave_ordering(b18@10, a13, a21).
#brave_ordering(b19@10, a13, a22).
#brave_ordering(b20@10, a13, a23).
#brave_ordering(b21@10, a24, a25).
#brave_ordering(b22@10, a26, a27).
#brave_ordering(b23@10, a26, a28).
#brave_ordering(b24@10, a29, a30).
#brave_ordering(b25@10, a29, a31).
#brave_ordering(b26@10, a29, a32).
#brave_ordering(b27@10, a29, a33).
#brave_ordering(b28@10, a29, a34).
#brave_ordering(b29@10, a29, a35).
#brave_ordering(b30@10, a29, a36).
#brave_ordering(b31@10, a29, a37).
#brave_ordering(b32@10, a29, a38).
#brave_ordering(b33@10, a39, a40).
#brave_ordering(b34@10, a41, a42).
#brave_ordering(b35@10, a41, a43).
#brave_ordering(b36@10, a41, a44).
#brave_ordering(b37@10, a41, a45).
#brave_ordering(b38@10, a41, a46).
#brave_ordering(b39@10, a41, a47).
#brave_ordering(b40@10, a41, a48).
#brave_ordering(b41@10, a41, a49).
#brave_ordering(b42@10, a41, a50).
#brave_ordering(b43@10, a41, a51).
