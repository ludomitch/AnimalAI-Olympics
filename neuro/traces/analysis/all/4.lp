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
%%Value was:0.07671850028358915
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-0.23617747480828066
#pos(a2,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:5.2781609195402295
#pos(a3,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-1.2586206896551724
#pos(a4,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-1.2873563218390802
#pos(a5,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-1.3103448275862069
#pos(a6,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.1313350920087513
#pos(a7,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:0.16478653375963898
#pos(a8,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07432440420215478
#pos(a9,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07505280133173794
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.07544993738445939
#pos(a11,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0765448462231373
#pos(a12,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.0783838003886903
#pos(a13,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:25.86206896551724
#pos(a14,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.3793103448275863
#pos(a15,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.3793103448275863
#pos(a16,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.3793103448275863
#pos(a17,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-1.3793103448275863
#pos(a18,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:8.333333333333334
#pos(a19,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-3.6702
#pos(a20,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-3.9435000000000002
#pos(a21,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:7.335
#pos(a22,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:6.478333333333334
#pos(a23,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:5.6775
#pos(a24,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:2.3487749999999994
#pos(a25,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-3.5012250000000007
#pos(a26,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:6.532432432432434
#pos(a27,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:3.2027027027027035
#pos(a28,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.972972972972973
#pos(a29,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.972972972972973
#pos(a30,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.990990990990991
#pos(a31,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-1.0038610038610039
#pos(a32,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-1.0270270270270272
#pos(a33,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:3.265311735941319
#pos(a34,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.8061124694376528
#pos(a35,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.8054966947387485
#pos(a36,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.08824967639867683
#pos(a37,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.09031408689110401
#pos(a38,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.09182287421896226
#pos(a39,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:0.2657868315081026
#pos(a40,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:0.23028417196402162
#pos(a41,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-0.49947115374988266
#pos(a42,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:25.384615384615383
#pos(a43,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.5384615384615385
#pos(a44,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.5384615384615385
#pos(a45,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.5384615384615385
#pos(a46,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.5384615384615385
#pos(a47,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.5384615384615385
#pos(a48,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:21.502727761896463
#pos(a49,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.0958435207823961
#pos(a50,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.36111745944848944
#pos(a51,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-1.1015674487557132
#pos(a52,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:18.0
#pos(a53,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.097799511002445
#pos(a54,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.097799511002445
#pos(a55,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.699266503667482
#pos(a56,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-4.0
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
#brave_ordering(b37@10, a42, a47).
#brave_ordering(b38@10, a48, a49).
#brave_ordering(b39@10, a48, a50).
#brave_ordering(b40@10, a48, a51).
#brave_ordering(b41@10, a52, a53).
#brave_ordering(b42@10, a52, a54).
#brave_ordering(b43@10, a52, a55).
#brave_ordering(b44@10, a52, a56).
