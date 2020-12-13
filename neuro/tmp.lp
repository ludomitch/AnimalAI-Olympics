
present(X):-goal(X).
present(X):- visible(X).
object(X):- present(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).
#modeo(1, initiate(rotate)).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, on(var(x),var(y))).
#modeo(1, goal(var(x))).
#modeo(1, platform(var(x))).
#modeo(1, ramp(var(x))).
#modeo(1, agent).

#weight(1).
#weight(-1).
#maxv(4).
#maxp(3).
#pos(a0,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:8.100000000000001
#pos(a1,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-0.40500000000000025
#pos(a2,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.100000000000001
#pos(a3,
{},
{},
{ramp(b).
goal(a).
initiate(balance(40,a)).}).
%%Value was:-9.0
#pos(a4,
{},
{},
{ramp(b).
goal(a).
initiate(balance(11,b)).}).
%%Value was:-9.0
#pos(a5,
{},
{},
{ramp(b).
goal(a).
initiate(climb(43)).}).
%%Value was:-10.0
#pos(a6,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a7,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-2.6572050000000003
#pos(a8,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-4.7829690000000005
#pos(a9,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-5.3144100000000005
#pos(a10,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-5.9049000000000005
#pos(a11,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-6.472061999999999
#pos(a12,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-6.799950000000001
#pos(a13,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.290000000000001
#pos(a14,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.398300000000002
#pos(a15,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.695000000000001
#pos(a16,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-9.096666666666666
#pos(a17,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-7.371225000000001
#pos(a18,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-8.006211111111112
#pos(a19,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(climb(49)).}).
%%Value was:10.0
#pos(a20,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(b,43)).}).
%%Value was:9.0
#pos(a21,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-5.9049000000000005
#pos(a22,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(a,41)).}).
%%Value was:-6.232950000000001
#pos(a23,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.695000000000001
#pos(a24,
{},
{},
{platform(b).
goal(a).
initiate(balance(40,a)).}).
%%Value was:-6.561
#pos(a25,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,43)).}).
%%Value was:-6.561
#pos(a26,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.04699090909091
#pos(a27,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,41)).}).
%%Value was:-8.100000000000001
#pos(a28,
{},
{},
{platform(b).
goal(a).
initiate(balance(63,b)).}).
%%Value was:-8.100000000000001
#pos(a29,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.101262307692307
#pos(a30,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.5975
#pos(a31,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,49)).}).
%%Value was:-9.0
#pos(a32,
{},
{},
{platform(b).
goal(a).
initiate(climb(58)).}).
%%Value was:-9.0
#pos(a33,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.078
#pos(a34,
{},
{},
{platform(b).
goal(a).
initiate(balance(59,60)).}).
%%Value was:-10.0
#pos(a35,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a0, a6).
#brave_ordering(b6@10, a7, a8).
#brave_ordering(b7@10, a7, a9).
#brave_ordering(b8@10, a7, a10).
#brave_ordering(b9@10, a7, a11).
#brave_ordering(b10@10, a7, a12).
#brave_ordering(b11@10, a7, a13).
#brave_ordering(b12@10, a7, a14).
#brave_ordering(b13@10, a7, a15).
#brave_ordering(b14@10, a7, a16).
#brave_ordering(b15@10, a17, a18).
#brave_ordering(b16@10, a19, a20).
#brave_ordering(b17@10, a19, a21).
#brave_ordering(b18@10, a19, a22).
#brave_ordering(b19@10, a19, a23).
#brave_ordering(b20@10, a24, a25).
#brave_ordering(b21@10, a24, a26).
#brave_ordering(b22@10, a24, a27).
#brave_ordering(b23@10, a24, a28).
#brave_ordering(b24@10, a24, a29).
#brave_ordering(b25@10, a24, a30).
#brave_ordering(b26@10, a24, a31).
#brave_ordering(b27@10, a24, a32).
#brave_ordering(b28@10, a24, a33).
#brave_ordering(b29@10, a24, a34).
#brave_ordering(b30@10, a24, a35).
