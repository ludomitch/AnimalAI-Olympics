
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
visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.405793358257649
#pos(a1,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.674160579904764
#pos(a2,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.814008139534883
#pos(a3,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-6.512566666666667
#pos(a4,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.781323
#pos(a5,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-7.940250000000001
#pos(a6,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.3225
#pos(a7,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.395929878082194
#pos(a8,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.730777580645164
#pos(a9,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.789850909090912
#pos(a10,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-4.235468717072764
#pos(a11,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-5.1918556635065665
#pos(a12,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-6.4634630152571
#pos(a13,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.049426232182605
#pos(a14,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
platform(c).
visible(d).
ramp(d).
goal(a).
initiate(rotate).}).
%%Value was:-7.3983
#pos(a15,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
platform(c).
visible(d).
ramp(d).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-8.100000000000001
#pos(a16,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-4.118930105132075
#pos(a17,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.6519602906275
#pos(a18,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.723490000000001
#pos(a19,
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
%%Value was:-8.100000000000001
#pos(a20,
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
%%Value was:-10.0
#pos(a21,
{},
{},
{visible(b).
lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a22,
{},
{},
{visible(b).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a23,
{},
{},
{visible(b).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a24,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-6.638020099213871
#pos(a25,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-8.105529309009036
#pos(a26,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:3.8475000000000006
#pos(a27,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:1.6585155000000005
#pos(a28,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-4.23654822
#pos(a29,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.561
#pos(a30,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:0.7357016828571428
#pos(a31,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.613265973167751
#pos(a32,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-6.239569999999999
#pos(a33,
{},
{},
{visible(b).
wall(b).
visible(c).
wall(c).
goal(a).
initiate(rotate).}).
%%Value was:-7.695000000000001
#pos(a34,
{},
{},
{visible(b).
wall(b).
visible(c).
wall(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.100000000000001
#pos(a35,
{},
{},
{visible(b).
wall(b).
visible(c).
wall(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-9.0
#pos(a36,
{},
{},
{on(agent,b).
visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-0.9499999999999993
#pos(a37,
{},
{},
{on(agent,b).
visible(b).
ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-3.27
#pos(a38,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.7818950000000005
#pos(a39,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.8951
#pos(a40,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.476530769230768
#pos(a41,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:9.384615384615385
#pos(a42,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-1.6263150000000006
#pos(a43,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a44,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-6.953738004367108
#pos(a45,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.787600332837829
#pos(a46,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.623869897402601
#pos(a47,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-5.937705
#pos(a48,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.290000000000001
#pos(a49,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.2805
#pos(a50,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:2.7506815769230766
#pos(a51,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.701438703333334
#pos(a52,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-6.820935452380953
#pos(a53,
{},
{},
{visible(a).
visible(b).
wall(b).
visible(c).
wall(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.55
#pos(a54,
{},
{},
{visible(a).
visible(b).
wall(b).
visible(c).
wall(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a55,
{},
{},
{visible(a).
goal(a).
initiate(rotate).}).
%%Value was:-0.6342387019448277
#pos(a56,
{},
{},
{visible(a).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a3, a4).
#brave_ordering(b3@10, a3, a5).
#brave_ordering(b4@10, a3, a6).
#brave_ordering(b5@10, a7, a8).
#brave_ordering(b6@10, a7, a9).
#brave_ordering(b7@10, a10, a11).
#brave_ordering(b8@10, a10, a12).
#brave_ordering(b9@10, a10, a13).
#brave_ordering(b10@10, a14, a15).
#brave_ordering(b11@10, a16, a17).
#brave_ordering(b12@10, a16, a18).
#brave_ordering(b13@10, a19, a20).
#brave_ordering(b14@10, a21, a22).
#brave_ordering(b15@10, a21, a23).
#brave_ordering(b16@10, a24, a25).
#brave_ordering(b17@10, a26, a27).
#brave_ordering(b18@10, a26, a28).
#brave_ordering(b19@10, a26, a29).
#brave_ordering(b20@10, a30, a31).
#brave_ordering(b21@10, a30, a32).
#brave_ordering(b22@10, a33, a34).
#brave_ordering(b23@10, a33, a35).
#brave_ordering(b24@10, a36, a37).
#brave_ordering(b25@10, a38, a39).
#brave_ordering(b26@10, a38, a40).
#brave_ordering(b27@10, a41, a42).
#brave_ordering(b28@10, a41, a43).
#brave_ordering(b29@10, a44, a45).
#brave_ordering(b30@10, a44, a46).
#brave_ordering(b31@10, a47, a48).
#brave_ordering(b32@10, a47, a49).
#brave_ordering(b33@10, a50, a51).
#brave_ordering(b34@10, a50, a52).
#brave_ordering(b35@10, a53, a54).
#brave_ordering(b36@10, a55, a56).
