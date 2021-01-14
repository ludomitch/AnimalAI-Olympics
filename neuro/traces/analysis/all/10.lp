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
#modeo(1, on(goal, platform)).
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
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:4.833758184635379
#pos(a1,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.8801900584795322
#pos(a2,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:0.45155516997622314
#pos(a3,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.12113851061219483
#pos(a4,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.}).
%%Value was:-0.12313690208427051
#pos(a5,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.}).
%%Value was:-0.12810516319288248
#pos(a6,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:18.995996029488854
#pos(a7,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.}).
%%Value was:-0.1349527665317139
#pos(a8,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.547744653007811
#pos(a9,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.7670893699601837
#pos(a10,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-3.0303030303030307
#pos(a11,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:6.907894736842104
#pos(a12,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-3.8587500000000006
#pos(a13,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-3.948631578947368
#pos(a14,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:24.724164724164723
#pos(a15,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6993006993006993
#pos(a16,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6993006993006993
#pos(a17,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6993006993006993
#pos(a18,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
on(goal,platform).
platform.}).
%%Value was:-0.6993006993006994
#pos(a19,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:2.2183884987164415
#pos(a20,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-0.23957055950598538
#pos(a21,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.29022802319503366
#pos(a22,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.527080953546416
#pos(a23,
{},
{},
{initiate(explore(a)).
occludes(a).}).
%%Value was:0.046147689952458805
#pos(a24,
{},
{},
{initiate(rotate).
occludes(a).}).
%%Value was:-0.12981717639676593
#pos(a25,
{},
{},
{initiate(observe).
occludes(a).}).
%%Value was:-0.5687461292048251
#pos(a26,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:21.396396396396394
#pos(a27,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a28,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a29,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a30,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a31,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-1.351351351351351
#pos(a32,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:23.602708216031665
#pos(a33,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:0.2761478864063663
#pos(a34,
{},
{},
{goal(a).
initiate(explore(b)).}).
%%Value was:-0.15414164288550966
#pos(a35,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-0.9266081117810564
#pos(a36,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:9.683458646616542
#pos(a37,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.6140438596491222
#pos(a38,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.3479052631578936
#pos(a39,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:3.062652631578947
#pos(a40,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-3.858157894736842
#pos(a41,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-3.878052631578947
#pos(a42,
{},
{},
{goal(a).
initiate(climb).
on(goal,platform).
platform.
ramp.}).
%%Value was:3.64102564102564
#pos(a43,
{},
{},
{goal(a).
initiate(interact(a)).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6452038527510229
#pos(a44,
{},
{},
{goal(a).
initiate(rotate).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6515435783728472
#pos(a45,
{},
{},
{goal(a).
initiate(observe).
on(goal,platform).
platform.
ramp.}).
%%Value was:-0.6541375291375296
#pos(a46,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:12.789473684210526
#pos(a47,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:12.789473684210526
#pos(a48,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:6.888315789473684
#pos(a49,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:1.1354013287657014
#pos(a50,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:0.32469822075431504
#pos(a51,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:0.03996883656509696
#pos(a52,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:0.0300094631513117
#pos(a53,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.10355003137436929
#pos(a54,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.10430884904569111
#pos(a55,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.10806756344956678
#pos(a56,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.}).
%%Value was:7.404201872573642
#pos(a57,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:0.8303899926416478
#pos(a58,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.6011207335710651
#pos(a59,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.6040537828617304
#pos(a60,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.6067079683828246
#pos(a61,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.}).
%%Value was:-0.6138563423331639
#pos(a62,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.}).
%%Value was:-0.6155044799376705
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a6, a7).
#brave_ordering(b6@10, a6, a8).
#brave_ordering(b7@10, a6, a9).
#brave_ordering(b8@10, a6, a10).
#brave_ordering(b9@10, a11, a12).
#brave_ordering(b10@10, a11, a13).
#brave_ordering(b11@10, a14, a15).
#brave_ordering(b12@10, a14, a16).
#brave_ordering(b13@10, a14, a17).
#brave_ordering(b14@10, a14, a18).
#brave_ordering(b15@10, a19, a20).
#brave_ordering(b16@10, a19, a21).
#brave_ordering(b17@10, a19, a22).
#brave_ordering(b18@10, a23, a24).
#brave_ordering(b19@10, a23, a25).
#brave_ordering(b20@10, a26, a27).
#brave_ordering(b21@10, a26, a28).
#brave_ordering(b22@10, a26, a29).
#brave_ordering(b23@10, a26, a30).
#brave_ordering(b24@10, a26, a31).
#brave_ordering(b25@10, a32, a33).
#brave_ordering(b26@10, a32, a34).
#brave_ordering(b27@10, a32, a35).
#brave_ordering(b28@10, a36, a37).
#brave_ordering(b29@10, a36, a38).
#brave_ordering(b30@10, a36, a39).
#brave_ordering(b31@10, a36, a40).
#brave_ordering(b32@10, a36, a41).
#brave_ordering(b33@10, a42, a43).
#brave_ordering(b34@10, a42, a44).
#brave_ordering(b35@10, a42, a45).
#brave_ordering(b36@10, a46, a47).
#brave_ordering(b37@10, a46, a48).
#brave_ordering(b38@10, a49, a50).
#brave_ordering(b39@10, a49, a51).
#brave_ordering(b40@10, a49, a52).
#brave_ordering(b41@10, a49, a53).
#brave_ordering(b42@10, a49, a54).
#brave_ordering(b43@10, a49, a55).
#brave_ordering(b44@10, a56, a57).
#brave_ordering(b45@10, a56, a58).
#brave_ordering(b46@10, a56, a59).
#brave_ordering(b47@10, a56, a60).
#brave_ordering(b48@10, a56, a61).
#brave_ordering(b49@10, a56, a62).
