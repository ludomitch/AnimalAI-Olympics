
present(X):-goal(X).
present(X):- visible(X,_).
separator(Y):-on(agent, X), adjacent(X, Y), platform(X).
can_occlude(X):-wall(X), not separator(X).
occludes(X,Y, O) :- present(Y), visible(X, O), not visible(Y, _), can_occlude(X).
occludes_more(X, Y) :- occludes(X,Z,O1), occludes(Y,Z,O2), O1 > O2.
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(explore(var(x),var(y)))).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, initiate(avoid(var(x),var(y)))).
#modeo(1, on(agent, var(x))).
#modeo(1, occludes(var(x), var(y), var(o))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, platform(var(x))).
#modeo(1, lava(var(x))).
#modeo(1, ramp(var(x))).
#modeo(1, goal(var(x))).

#weight(1).
#weight(-1).
#maxv(4).
#maxp(5).
#pos(a0,
{},
{},
{lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:200.0
#pos(a1,
{},
{},
{lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-10.0
#pos(a2,
{},
{},
{lava(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a3,
{},
{},
{lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a4,
{},
{},
{lava(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a5,
{},
{},
{lava(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a6,
{},
{},
{lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a7,
{},
{},
{lava(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-10.0
#pos(a8,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(explore(11,a)).}).
%%Value was:60.4014285714286
#pos(a9,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(11)).}).
%%Value was:8.346753246753245
#pos(a10,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-6.311764705882358
#pos(a11,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(11,a)).}).
%%Value was:-6.34634146341464
#pos(a12,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(explore(12,a)).}).
%%Value was:-6.4695121951219585
#pos(a13,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.72258064516129
#pos(a14,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.767065868263472
#pos(a15,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(11)).}).
%%Value was:-8.405000000000006
#pos(a16,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(11,a)).}).
%%Value was:-8.415116279069775
#pos(a17,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(12,a)).}).
%%Value was:-8.441346153846164
#pos(a18,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(10)).}).
%%Value was:-8.453333333333342
#pos(a19,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(10,a)).}).
%%Value was:-8.458227848101275
#pos(a20,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(explore(10,a)).}).
%%Value was:-8.462857142857152
#pos(a21,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(10,a)).}).
%%Value was:-8.464367816091963
#pos(a22,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(12)).}).
%%Value was:-8.482432432432441
#pos(a23,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(12,a)).}).
%%Value was:-8.491011235955064
#pos(a24,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.979870129870125
#pos(a25,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(12)).}).
%%Value was:-8.992753623188408
#pos(a26,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(14,a)).}).
%%Value was:-9.0
#pos(a27,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(10)).}).
%%Value was:-9.033333333333335
#pos(a28,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.076351351351347
#pos(a29,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.266666666666666
#pos(a30,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.300531914893613
#pos(a31,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.451612903225806
#pos(a32,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(13,a)).}).
%%Value was:-9.666666666666666
#pos(a33,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(13,a)).}).
%%Value was:-9.666666666666666
#pos(a34,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(15)).}).
%%Value was:-10.0
#pos(a35,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(16,a)).}).
%%Value was:-10.0
#pos(a36,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(13)).}).
%%Value was:-10.0
#pos(a37,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(explore(13,a)).}).
%%Value was:-10.0
#pos(a38,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(13)).}).
%%Value was:-10.0
#pos(a39,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(15,a)).}).
%%Value was:-10.0
#pos(a40,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(explore(14,a)).}).
%%Value was:-10.0
#pos(a41,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(explore(15,a)).}).
%%Value was:-10.0
#pos(a42,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(14)).}).
%%Value was:-10.0
#pos(a43,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(avoid(14,a)).}).
%%Value was:-10.0
#pos(a44,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:58.182539682539684
#pos(a45,
{},
{},
{goal(a).
initiate(balance(1a,a)).}).
%%Value was:46.41
#pos(a46,
{},
{},
{goal(a).
initiate(avoid(1a,a)).}).
%%Value was:28.78
#pos(a47,
{},
{},
{goal(a).
initiate(climb(1a)).}).
%%Value was:26.424999999999997
#pos(a48,
{},
{},
{goal(a).
initiate(balance(11,a)).}).
%%Value was:23.68
#pos(a49,
{},
{},
{goal(a).
initiate(interact(12)).}).
%%Value was:23.157894736842106
#pos(a50,
{},
{},
{goal(a).
initiate(explore(1a,a)).}).
%%Value was:19.8
#pos(a51,
{},
{},
{goal(a).
initiate(avoid(10,a)).}).
%%Value was:12.339361702127661
#pos(a52,
{},
{},
{goal(a).
initiate(interact(1a)).}).
%%Value was:3.9312500000000004
#pos(a53,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:3.7046153846153853
#pos(a54,
{},
{},
{goal(a).
initiate(explore(11,a)).}).
%%Value was:3.4827586206896552
#pos(a55,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:2.8186230636833054
#pos(a56,
{},
{},
{goal(a).
initiate(explore(12,a)).}).
%%Value was:1.411764705882353
#pos(a57,
{},
{},
{goal(a).
initiate(explore(10,a)).}).
%%Value was:-0.5710344827586206
#pos(a58,
{},
{},
{goal(a).
initiate(climb(11)).}).
%%Value was:-2.037037037037037
#pos(a59,
{},
{},
{goal(a).
initiate(climb(10)).}).
%%Value was:-2.278888888888889
#pos(a60,
{},
{},
{goal(a).
initiate(interact(11)).}).
%%Value was:-2.8666666666666667
#pos(a61,
{},
{},
{goal(a).
initiate(balance(10,a)).}).
%%Value was:-6.826470588235295
#pos(a62,
{},
{},
{goal(a).
initiate(climb(12)).}).
%%Value was:-9.615384615384615
#pos(a63,
{},
{},
{goal(a).
initiate(avoid(11,a)).}).
%%Value was:-9.72
#pos(a64,
{},
{},
{goal(a).
initiate(balance(12,a)).}).
%%Value was:-9.85
#pos(a65,
{},
{},
{goal(a).
initiate(interact(10)).}).
%%Value was:-9.851153846153847
#pos(a66,
{},
{},
{goal(a).
initiate(climb(13)).}).
%%Value was:-9.857142857142858
#pos(a67,
{},
{},
{goal(a).
initiate(balance(13,a)).}).
%%Value was:-9.916666666666666
#pos(a68,
{},
{},
{goal(a).
initiate(avoid(12,a)).}).
%%Value was:-9.9375
#pos(a69,
{},
{},
{goal(a).
initiate(explore(13,a)).}).
%%Value was:-10.0
#pos(a70,
{},
{},
{goal(a).
initiate(balance(14,a)).}).
%%Value was:-10.0
#pos(a71,
{},
{},
{goal(a).
initiate(avoid(14,a)).}).
%%Value was:-10.0
#pos(a72,
{},
{},
{goal(a).
initiate(balance(aa,a)).}).
%%Value was:-10.0
#pos(a73,
{},
{},
{goal(a).
initiate(interact(13)).}).
%%Value was:-10.0
#pos(a74,
{},
{},
{goal(a).
initiate(avoid(13,a)).}).
%%Value was:-10.0
#pos(a75,
{},
{},
{goal(a).
initiate(interact(aa)).}).
%%Value was:-10.0
#pos(a76,
{},
{},
{goal(a).
initiate(interact(14)).}).
%%Value was:-10.0
#pos(a77,
{},
{},
{goal(a).
initiate(climb(14)).}).
%%Value was:-10.0
#pos(a78,
{},
{},
{goal(a).
initiate(explore(14,a)).}).
%%Value was:-10.0
#pos(a79,
{},
{},
{goal(a).
initiate(interact(a0)).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a0, a6).
#brave_ordering(b6@10, a0, a7).
#brave_ordering(b7@10, a8, a9).
#brave_ordering(b8@10, a8, a10).
#brave_ordering(b9@10, a8, a11).
#brave_ordering(b10@10, a8, a12).
#brave_ordering(b11@10, a8, a13).
#brave_ordering(b12@10, a8, a14).
#brave_ordering(b13@10, a8, a15).
#brave_ordering(b14@10, a8, a16).
#brave_ordering(b15@10, a8, a17).
#brave_ordering(b16@10, a8, a18).
#brave_ordering(b17@10, a8, a19).
#brave_ordering(b18@10, a8, a20).
#brave_ordering(b19@10, a8, a21).
#brave_ordering(b20@10, a8, a22).
#brave_ordering(b21@10, a8, a23).
#brave_ordering(b22@10, a8, a24).
#brave_ordering(b23@10, a8, a25).
#brave_ordering(b24@10, a8, a26).
#brave_ordering(b25@10, a8, a27).
#brave_ordering(b26@10, a8, a28).
#brave_ordering(b27@10, a8, a29).
#brave_ordering(b28@10, a8, a30).
#brave_ordering(b29@10, a8, a31).
#brave_ordering(b30@10, a8, a32).
#brave_ordering(b31@10, a8, a33).
#brave_ordering(b32@10, a8, a34).
#brave_ordering(b33@10, a8, a35).
#brave_ordering(b34@10, a8, a36).
#brave_ordering(b35@10, a8, a37).
#brave_ordering(b36@10, a8, a38).
#brave_ordering(b37@10, a8, a39).
#brave_ordering(b38@10, a8, a40).
#brave_ordering(b39@10, a8, a41).
#brave_ordering(b40@10, a8, a42).
#brave_ordering(b41@10, a8, a43).
#brave_ordering(b42@10, a44, a45).
#brave_ordering(b43@10, a44, a46).
#brave_ordering(b44@10, a44, a47).
#brave_ordering(b45@10, a44, a48).
#brave_ordering(b46@10, a44, a49).
#brave_ordering(b47@10, a44, a50).
#brave_ordering(b48@10, a44, a51).
#brave_ordering(b49@10, a44, a52).
#brave_ordering(b50@10, a44, a53).
#brave_ordering(b51@10, a44, a54).
#brave_ordering(b52@10, a44, a55).
#brave_ordering(b53@10, a44, a56).
#brave_ordering(b54@10, a44, a57).
#brave_ordering(b55@10, a44, a58).
#brave_ordering(b56@10, a44, a59).
#brave_ordering(b57@10, a44, a60).
#brave_ordering(b58@10, a44, a61).
#brave_ordering(b59@10, a44, a62).
#brave_ordering(b60@10, a44, a63).
#brave_ordering(b61@10, a44, a64).
#brave_ordering(b62@10, a44, a65).
#brave_ordering(b63@10, a44, a66).
#brave_ordering(b64@10, a44, a67).
#brave_ordering(b65@10, a44, a68).
#brave_ordering(b66@10, a44, a69).
#brave_ordering(b67@10, a44, a70).
#brave_ordering(b68@10, a44, a71).
#brave_ordering(b69@10, a44, a72).
#brave_ordering(b70@10, a44, a73).
#brave_ordering(b71@10, a44, a74).
#brave_ordering(b72@10, a44, a75).
#brave_ordering(b73@10, a44, a76).
#brave_ordering(b74@10, a44, a77).
#brave_ordering(b75@10, a44, a78).
#brave_ordering(b76@10, a44, a79).
