
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
initiate(climb(b)).}).
%%Value was:-6.354006197394736
#pos(a1,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-6.620451644190333
#pos(a2,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.290000000000001
#pos(a3,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.160103353214286
#pos(a4,
{},
{},
{on(agent,b).
platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-3.874204890000001
#pos(a5,
{},
{},
{on(agent,b).
platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-7.290000000000001
#pos(a6,
{},
{},
{on(agent,b).
platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-9.0
#pos(a7,
{},
{},
{on(agent,b).
platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a8,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-1.499668900000001
#pos(a9,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.689244996445455
#pos(a10,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-6.3467631715
#pos(a11,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.166475000000001
#pos(a12,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.734428571428571
#pos(a13,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.0633931863435375
#pos(a14,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-6.079412519054164
#pos(a15,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-6.474914982885714
#pos(a16,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-6.561
#pos(a17,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-6.7286680599999995
#pos(a18,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-6.9290808194850415
#pos(a19,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.269910243243243
#pos(a20,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-7.73906393939394
#pos(a21,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.952450000000001
#pos(a22,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(d,a)).}).
%%Value was:-7.290000000000001
#pos(a23,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(b,d)).}).
%%Value was:-7.7805
#pos(a24,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(c,d)).}).
%%Value was:-8.100000000000001
#pos(a25,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.645
#pos(a26,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(d,c)).}).
%%Value was:-10.0
#pos(a27,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-10.0
#pos(a28,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(d,b)).}).
%%Value was:-10.0
#pos(a29,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.49109546
#pos(a30,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.738500000000001
#pos(a31,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.367609979166668
#pos(a32,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.516482758620693
#pos(a33,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.42
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a4, a5).
#brave_ordering(b4@10, a4, a6).
#brave_ordering(b5@10, a4, a7).
#brave_ordering(b6@10, a8, a9).
#brave_ordering(b7@10, a8, a10).
#brave_ordering(b8@10, a8, a11).
#brave_ordering(b9@10, a8, a12).
#brave_ordering(b10@10, a13, a14).
#brave_ordering(b11@10, a13, a15).
#brave_ordering(b12@10, a13, a16).
#brave_ordering(b13@10, a13, a17).
#brave_ordering(b14@10, a13, a18).
#brave_ordering(b15@10, a13, a19).
#brave_ordering(b16@10, a13, a20).
#brave_ordering(b17@10, a13, a21).
#brave_ordering(b18@10, a22, a23).
#brave_ordering(b19@10, a22, a24).
#brave_ordering(b20@10, a22, a25).
#brave_ordering(b21@10, a22, a26).
#brave_ordering(b22@10, a22, a27).
#brave_ordering(b23@10, a22, a28).
#brave_ordering(b24@10, a29, a30).
#brave_ordering(b25@10, a29, a31).
#brave_ordering(b26@10, a29, a32).
#brave_ordering(b27@10, a29, a33).
