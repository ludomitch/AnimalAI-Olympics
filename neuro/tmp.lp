
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
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.100000000000001
#pos(a1,
{},
{},
{ramp(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-9.05
#pos(a2,
{},
{},
{on(agent,b).
platform(c).
ramp(b).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-8.100000000000001
#pos(a3,
{},
{},
{on(agent,b).
platform(c).
ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a4,
{},
{},
{on(agent,b).
platform(c).
ramp(b).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-10.0
#pos(a5,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-3.5147682292653846
#pos(a6,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-4.082535000000001
#pos(a7,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-5.585129287621579
#pos(a8,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-6.035160792857143
#pos(a9,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-6.123128280476191
#pos(a10,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-6.355167070875001
#pos(a11,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-6.701003577096777
#pos(a12,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-6.8471726749999995
#pos(a13,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-7.202471754166667
#pos(a14,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.62054857938387
#pos(a15,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.812328117190324
#pos(a16,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-5.679535860636364
#pos(a17,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.216487419354839
#pos(a18,
{},
{},
{on(agent,b).
platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(c,d)).}).
%%Value was:-5.9049000000000005
#pos(a19,
{},
{},
{on(agent,b).
platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(d,a)).}).
%%Value was:-6.561
#pos(a20,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(climb(c)).}).
%%Value was:-5.3144100000000005
#pos(a21,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-10.0
#pos(a22,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:1.7650000000000001
#pos(a23,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-4.2
#pos(a24,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.613767500000001
#pos(a25,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.710428571428571
#pos(a26,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.21275
#pos(a27,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.517482169491527
#pos(a28,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.241378791044777
#pos(a29,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.5322
#pos(a30,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.545627580000003
#pos(a31,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.689285714285715
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a5, a8).
#brave_ordering(b6@10, a5, a9).
#brave_ordering(b7@10, a5, a10).
#brave_ordering(b8@10, a5, a11).
#brave_ordering(b9@10, a5, a12).
#brave_ordering(b10@10, a5, a13).
#brave_ordering(b11@10, a5, a14).
#brave_ordering(b12@10, a15, a16).
#brave_ordering(b13@10, a15, a17).
#brave_ordering(b14@10, a18, a19).
#brave_ordering(b15@10, a20, a21).
#brave_ordering(b16@10, a22, a23).
#brave_ordering(b17@10, a22, a24).
#brave_ordering(b18@10, a22, a25).
#brave_ordering(b19@10, a22, a26).
#brave_ordering(b20@10, a27, a28).
#brave_ordering(b21@10, a27, a29).
#brave_ordering(b22@10, a27, a30).
#brave_ordering(b23@10, a27, a31).
