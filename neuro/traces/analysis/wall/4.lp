#modeo(1, initiate(rotate), (positive)).
#modeo(1, initiate(observe), (positive)).
#modeo(1, initiate(climb), (positive)).
#modeo(1, initiate(collect), (positive)).
#modeo(1, initiate(interact(var(x))), (positive)).
#modeo(1, initiate(explore(var(x))), (positive)).
#modeo(1, initiate(balance), (positive)).
#modeo(1, initiate(avoid), (positive)).
#modeo(1, initiate(drop(var(side))), (positive) ).
#modeo(1, on(agent, platform)).
#modeo(1, occludes(var(x))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, bigger(var(x),var(y))).
#modeo(1, more_goals(var(side))).
#modeo(1, danger).

#weight(-1).
#maxv(2).
#maxp(5).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(rotate).}).
%%Value was:5.044155844155844
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-3.240909090909091
#pos(a2,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:6.954545454545453
#pos(a3,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:6.772727272727272
#pos(a4,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-3.2
#pos(a5,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:19.09090909090909
#pos(a6,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-3.272727272727273
#pos(a7,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-3.6363636363636367
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
