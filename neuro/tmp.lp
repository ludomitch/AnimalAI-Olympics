
present(X):-goal(X).
present(X):- visible(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).
#modeo(1, initiate(rotate)).
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(explore(var(x),var(y)))).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, initiate(avoid(var(x),var(y)))).
#modeo(1, visible(var(x))).
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
{visible(a).
goal(a).
initiate(rotate).}).
%%Value was:-1.8195438951718748
#pos(a1,
{},
{},
{visible(a).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a2,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.8282
#pos(a3,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.577777777777776
#pos(a4,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.833333333333334
#pos(a5,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-5.9049000000000005
#pos(a6,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-7.290000000000001
#pos(a7,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-7.290000000000001
#pos(a8,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a9,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:9.2
#pos(a10,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.201272
#pos(a11,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a12,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.577948888372093
#pos(a13,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.047202069767446
#pos(a14,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.975609756097562
#pos(a15,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-7.575951351561974
#pos(a16,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-9.084751092424241
#pos(a17,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-5.949774000000001
#pos(a18,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-6.633770432142858
#pos(a19,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.2337944193548385
#pos(a20,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.102106562500001
#pos(a21,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.695000000000001
#pos(a22,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.73775
#pos(a23,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.6
#pos(a24,
{},
{},
{visible(b).
lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a25,
{},
{},
{visible(b).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a26,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.391716000000003
#pos(a27,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.734600714
#pos(a28,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.545065853658537
#pos(a29,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.298
#pos(a30,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.05
#pos(a31,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a32,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.311105000000001
#pos(a33,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.172745833333332
#pos(a34,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.399999999999999
#pos(a35,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-4.087583333333334
#pos(a36,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-5.967391500000001
#pos(a37,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.753538461538461
#pos(a38,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-8.290687499999999
#pos(a39,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-8.96009090909091
#pos(a40,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.923076923076923
#pos(a41,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a5, a8).
#brave_ordering(b6@10, a9, a10).
#brave_ordering(b7@10, a9, a11).
#brave_ordering(b8@10, a12, a13).
#brave_ordering(b9@10, a12, a14).
#brave_ordering(b10@10, a15, a16).
#brave_ordering(b11@10, a17, a18).
#brave_ordering(b12@10, a17, a19).
#brave_ordering(b13@10, a17, a20).
#brave_ordering(b14@10, a21, a22).
#brave_ordering(b15@10, a21, a23).
#brave_ordering(b16@10, a24, a25).
#brave_ordering(b17@10, a26, a27).
#brave_ordering(b18@10, a26, a28).
#brave_ordering(b19@10, a29, a30).
#brave_ordering(b20@10, a29, a31).
#brave_ordering(b21@10, a32, a33).
#brave_ordering(b22@10, a32, a34).
#brave_ordering(b23@10, a35, a36).
#brave_ordering(b24@10, a35, a37).
#brave_ordering(b25@10, a38, a39).
#brave_ordering(b26@10, a38, a40).
#brave_ordering(b27@10, a38, a41).
