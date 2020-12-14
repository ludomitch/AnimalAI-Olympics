
present(X):-goal(X).
present(X):- visible(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).
#modeo(1, initiate(rotate)).
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
#maxp(4).
#pos(a0,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.9
#pos(a1,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.545454545454545
#pos(a2,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.727272727272727
#pos(a3,
{},
{},
{ramp(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.75
#pos(a4,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.48
#pos(a5,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.5
#pos(a6,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.56
#pos(a7,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.619047619047619
#pos(a8,
{},
{},
{platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.72
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
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-8.376923076923077
#pos(a11,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-8.473529411764707
#pos(a12,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-8.551515151515149
#pos(a13,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-8.61290322580645
#pos(a14,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-8.673076923076922
#pos(a15,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.68888888888889
#pos(a16,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.841025641025642
#pos(a17,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-9.027272727272727
#pos(a18,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-9.061111111111112
#pos(a19,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-9.113953488372095
#pos(a20,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-9.225
#pos(a21,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a22,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a23,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:0.0
#pos(a24,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.0
#pos(a25,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.0
#pos(a26,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.0
#pos(a27,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.8
#pos(a28,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a4, a5).
#brave_ordering(b4@10, a4, a6).
#brave_ordering(b5@10, a4, a7).
#brave_ordering(b6@10, a4, a8).
#brave_ordering(b7@10, a4, a9).
#brave_ordering(b8@10, a10, a11).
#brave_ordering(b9@10, a10, a12).
#brave_ordering(b10@10, a10, a13).
#brave_ordering(b11@10, a10, a14).
#brave_ordering(b12@10, a10, a15).
#brave_ordering(b13@10, a10, a16).
#brave_ordering(b14@10, a10, a17).
#brave_ordering(b15@10, a10, a18).
#brave_ordering(b16@10, a10, a19).
#brave_ordering(b17@10, a10, a20).
#brave_ordering(b18@10, a10, a21).
#brave_ordering(b19@10, a10, a22).
#brave_ordering(b20@10, a23, a24).
#brave_ordering(b21@10, a23, a25).
#brave_ordering(b22@10, a23, a26).
#brave_ordering(b23@10, a23, a27).
#brave_ordering(b24@10, a23, a28).
