
present(X):-goal(X).
present(X):- visible(X).
object(X):- present(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).

#modeo(1, initiate(rotate)).
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(explore(var(x), var(y)))).
#modeo(1, goal(var(x))).
#modeo(1, visible(var(x))).
#modeo(1, occludes(var(x),var(y))).
#weight(1).
#weight(-1).
#maxv(4).
#maxp(3).
#pos(a0,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:1.088551020408163
#pos(a1,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-3.7804918181818183
#pos(a2,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-4.0995738
#pos(a3,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-5.8
#pos(a4,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.924651888235294
#pos(a5,
{},
{},
{visible(a).
goal(a).
initiate(interact(a)).}).
%%Value was:8.741935483870968
#pos(a6,
{},
{},
{visible(a).
goal(a).
initiate(rotate).}).
%%Value was:6.339366777142501
#pos(a7,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:7.247222222222222
#pos(a8,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:1.88925411
#pos(a9,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-1.2882596332499998
#pos(a10,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-2.837766375
#pos(a11,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-7.909090909090909
#pos(a12,
{},
{},
{visible(a).
visible(b).
wall(b).
visible(c).
wall(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-8.100000000000001
#pos(a13,
{},
{},
{visible(a).
visible(b).
wall(b).
visible(c).
wall(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-9.0
#pos(a14,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:0.9710626032169537
#pos(a15,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-7.420045454545454
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a5, a6).
#brave_ordering(b5@10, a7, a8).
#brave_ordering(b6@10, a7, a9).
#brave_ordering(b7@10, a7, a10).
#brave_ordering(b8@10, a7, a11).
#brave_ordering(b9@10, a12, a13).
#brave_ordering(b10@10, a14, a15).
