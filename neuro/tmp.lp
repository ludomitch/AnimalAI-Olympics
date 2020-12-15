
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
initiate(interact(a)).}).
%%Value was:7.878148148148148
#pos(a1,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:5.188446368181817
#pos(a2,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:4.962339874687499
#pos(a3,
{},
{},
{visible(a).
goal(a).
initiate(interact(a)).}).
%%Value was:7.5
#pos(a4,
{},
{},
{visible(a).
goal(a).
initiate(rotate).}).
%%Value was:1.2554250000000002
#pos(a5,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:0.7054194705882355
#pos(a6,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:0.7007499999999999
#pos(a7,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-6.197947368421052
#pos(a8,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:2.3776131900000004
#pos(a9,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-2.0605693454090908
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a3, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a8, a9).
