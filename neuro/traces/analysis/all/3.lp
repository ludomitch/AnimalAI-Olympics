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
#maxp(11).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(rotate).}).
%%Value was:0.13882353438459719
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-0.24328789222090413
#pos(a2,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:4.494983277591972
#pos(a3,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-1.1956521739130435
#pos(a4,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-1.2173913043478262
#pos(a5,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-1.222826086956522
#pos(a6,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.0724787467251244
#pos(a7,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07122311442500721
#pos(a8,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07168704896071906
#pos(a9,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07257999098693106
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07270662460567823
#pos(a11,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0737993904721168
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07516338313195647
#pos(a13,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:26.08695652173913
#pos(a14,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.3043478260869565
#pos(a15,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.3043478260869565
#pos(a16,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.3043478260869565
#pos(a17,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.3043478260869565
#pos(a18,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:7.5
#pos(a19,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-4.92075
#pos(a20,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-5.467500000000001
#pos(a21,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:7.5
#pos(a22,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:6.4125
#pos(a23,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:6.108750000000001
#pos(a24,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:1.1606625
#pos(a25,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-6.075
#pos(a26,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:4.90909090909091
#pos(a27,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:4.892045454545455
#pos(a28,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.2272727272727273
#pos(a29,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.2272727272727273
#pos(a30,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.2613636363636362
#pos(a31,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-1.3181818181818181
#pos(a32,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.3636363636363635
#pos(a33,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:3.1352555205047317
#pos(a34,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:1.0116719242902208
#pos(a35,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.920307570977918
#pos(a36,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.0863564668769716
#pos(a37,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.0874718341595313
#pos(a38,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.08901156677181915
#pos(a39,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:0.6286615592609289
#pos(a40,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:0.4959422981505003
#pos(a41,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-0.5417687465006075
#pos(a42,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:24.375
#pos(a43,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.875
#pos(a44,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.875
#pos(a45,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.875
#pos(a46,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.875
#pos(a47,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:20.492478556717156
#pos(a48,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.0922712933753943
#pos(a49,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.2411477926415762
#pos(a50,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.8155410572603002
#pos(a51,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:18.75
#pos(a52,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.0946372239747634
#pos(a53,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.0946372239747634
#pos(a54,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.5315457413249214
#pos(a55,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-3.75
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a2, a5).
#brave_ordering(b4@10, a6, a7).
#brave_ordering(b5@10, a6, a8).
#brave_ordering(b6@10, a6, a9).
#brave_ordering(b7@10, a6, a10).
#brave_ordering(b8@10, a6, a11).
#brave_ordering(b9@10, a6, a12).
#brave_ordering(b10@10, a13, a14).
#brave_ordering(b11@10, a13, a15).
#brave_ordering(b12@10, a13, a16).
#brave_ordering(b13@10, a13, a17).
#brave_ordering(b14@10, a18, a19).
#brave_ordering(b15@10, a18, a20).
#brave_ordering(b16@10, a21, a22).
#brave_ordering(b17@10, a21, a23).
#brave_ordering(b18@10, a21, a24).
#brave_ordering(b19@10, a21, a25).
#brave_ordering(b20@10, a26, a27).
#brave_ordering(b21@10, a26, a28).
#brave_ordering(b22@10, a26, a29).
#brave_ordering(b23@10, a26, a30).
#brave_ordering(b24@10, a26, a31).
#brave_ordering(b25@10, a26, a32).
#brave_ordering(b26@10, a33, a34).
#brave_ordering(b27@10, a33, a35).
#brave_ordering(b28@10, a33, a36).
#brave_ordering(b29@10, a33, a37).
#brave_ordering(b30@10, a33, a38).
#brave_ordering(b31@10, a39, a40).
#brave_ordering(b32@10, a39, a41).
#brave_ordering(b33@10, a42, a43).
#brave_ordering(b34@10, a42, a44).
#brave_ordering(b35@10, a42, a45).
#brave_ordering(b36@10, a42, a46).
#brave_ordering(b37@10, a47, a48).
#brave_ordering(b38@10, a47, a49).
#brave_ordering(b39@10, a47, a50).
#brave_ordering(b40@10, a51, a52).
#brave_ordering(b41@10, a51, a53).
#brave_ordering(b42@10, a51, a54).
#brave_ordering(b43@10, a51, a55).
