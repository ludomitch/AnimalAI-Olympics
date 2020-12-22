#modeh(1, initiate(observe)).
#modeh(1, initiate(interact(var(x)))).
#modeh(1, initiate(collect(var(x)))).
#modeh(1, initiate(explore(var(x),var(y)))).
#modeh(1, initiate(climb(var(x)))).
#modeh(1, initiate(balance(var(x),var(y)))).
#modeh(1, initiate(avoid(var(x),var(y)))).
#modeh(1, initiate(drop(var(x)))).
#modeb(1, on(agent, var(x))).
#modeb(1, occludes(var(x),var(y))).
#modeb(1, occludes_more(var(x),var(y))).
#modeb(1, bigger(var(x),var(y))).
#modeb(1, more_goals(var(x))).
#modeb(1, moving).

#maxv(3).
#pos(a9,
{initiate(explore(a,b))},
{},
{
occludes(a,b).}).
%%Value was:2.4412136752136795
#pos(a15,
{initiate(drop(left))},
{},
{
more_goals(left).
on(agent,a).}).
%%Value was:86.68483077572728
#pos(a21,
{initiate(explore(a,b))},
{},
{
occludes(c,b).
occludes(a,b).
occludes_more(a,c).
on(agent,d).}).
%%Value was:92.80227272727286
% #pos(a27,
% {initiate(collect)},
% {},
% {
% more_goals(left).}).
%%Value was:153.33333333333334
#pos(a31,
{initiate(interact(a))},
{},
{bigger(a,b).
}).
%%Value was:200.0
% #pos(a36,
% {initiate(balance(a,b))},
% {},
% {
% on(agent,a).}).
%%Value was:25.35740091116172
% #pos(a48,
% {initiate(collect)},
% {},
% {
% more_goals(right).}).
%%Value was:200.0
#pos(a52,
{initiate(explore(a,b))},
{},
{
occludes(a,b).
on(agent,c).}).
%%Value was:11.835884615384614
#pos(a61,
{initiate(observe)},
{},
{
moving.
on(agent,a).}).
%%Value was:1.8919524193548374

#modeo(1, initiate(rotate), (positive)).
#modeo(1, initiate(interact(var(x))), (positive)).
#modeo(1, initiate(explore(var(x),var(y))), (positive)).
#modeo(1, initiate(climb(var(x))), (positive)).
#modeo(1, initiate(balance(var(x),var(y))), (positive)).
#modeo(1, initiate(avoid(var(x),var(y))), (positive)).
#modeo(1, on(agent, var(x))).
#modeo(1, occludes(var(x),var(y))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, wall(var(x))).
#modeo(1, lava(var(x))).
#modeo(1, platform(var(x))).
#modeo(1, ramp(var(x))).

#bias(":- #count { X: weak_body(initiate(X)) } != 1.").
#bias(":- #count { X: weak_body(wall(X));
 X: weak_body(lava(X));
  X: weak_body(platform(X));
   X: weak_body(ramp(X));
    X: weak_body(goal(X));
     X: weak_body(naf(wall(X)));
      X: weak_body(naf(lava(X)));
       X: weak_body(naf(platform(X)));
        X: weak_body(naf(ramp(X)));
         X: weak_body(naf(goal(X))) } > 1.").