
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
{visible(b).
ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-6.9141615
#pos(a1,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a2,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-4.0725
#pos(a3,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.777285714285715
#pos(a4,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.220333333333334
#pos(a5,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:8.678354166666667
#pos(a6,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:4.061222042696767
#pos(a7,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:3.379723521991998
#pos(a8,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-1.5242779030012046
#pos(a9,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-6.808630769230771
#pos(a10,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:10.0
#pos(a11,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.070571428571429
#pos(a12,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a13,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-5.388696532352941
#pos(a14,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-6.1368588875249985
#pos(a15,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-6.9647910192692315
#pos(a16,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.242319069999999
#pos(a17,
{},
{},
{visible(a).
goal(a).
initiate(rotate).}).
%%Value was:1.1278636363636367
#pos(a18,
{},
{},
{visible(a).
goal(a).
initiate(interact(a)).}).
%%Value was:-4.25531914893617
#pos(a19,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.267142857142856
#pos(a20,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a21,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a22,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:4.231766251001373
#pos(a23,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:3.1743499500000003
#pos(a24,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.072355710310346
#pos(a25,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.2273098457692315
#pos(a26,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.067396
#pos(a27,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.232666666666667
#pos(a28,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:1.1082165000000004
#pos(a29,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-2.0684507142857145
#pos(a30,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.251995833333334
#pos(a31,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-8.456278695652175
#pos(a32,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-8.60098
#pos(a33,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.562646923076924
#pos(a34,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a8, a9).
#brave_ordering(b6@10, a10, a11).
#brave_ordering(b7@10, a10, a12).
#brave_ordering(b8@10, a13, a14).
#brave_ordering(b9@10, a13, a15).
#brave_ordering(b10@10, a13, a16).
#brave_ordering(b11@10, a17, a18).
#brave_ordering(b12@10, a19, a20).
#brave_ordering(b13@10, a19, a21).
#brave_ordering(b14@10, a22, a23).
#brave_ordering(b15@10, a22, a24).
#brave_ordering(b16@10, a25, a26).
#brave_ordering(b17@10, a25, a27).
#brave_ordering(b18@10, a28, a29).
#brave_ordering(b19@10, a28, a30).
#brave_ordering(b20@10, a31, a32).
#brave_ordering(b21@10, a31, a33).
#brave_ordering(b22@10, a31, a34).
