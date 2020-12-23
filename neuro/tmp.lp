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
#modeo(1, moving).

#weight(-1).
#maxv(4).
#maxp(9).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).
wall(c).}).
%%Value was:19.72
#pos(a1,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a2,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a3,
{},
{},
{goal(a).
initiate(avoid).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a4,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:5.720096844736025
#pos(a5,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:0.10239336971902147
#pos(a6,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-2.101637922728587
#pos(a7,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).}).
%%Value was:15.522976067493126
#pos(a8,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).}).
%%Value was:0.13508377365307345
#pos(a9,
{},
{},
{goal(a).
initiate(rotate).
wall(b).}).
%%Value was:-0.32099253403601197
#pos(a10,
{},
{},
{goal(a).
initiate(observe).
wall(b).}).
%%Value was:-0.9816989320351721
#pos(a11,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
platform.
ramp.}).
%%Value was:19.604221635883906
#pos(a12,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.1978891820580475
#pos(a13,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.1978891820580475
#pos(a14,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.1978891820580475
#pos(a15,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.
wall(b).
wall(a).
wall(c).}).
%%Value was:4.635867768595045
#pos(a16,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(a).}).
%%Value was:-0.22695486331849993
#pos(a17,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.45128516187732143
#pos(a18,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.45202261852979514
#pos(a19,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.4521724899762698
#pos(a20,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(d).}).
%%Value was:-0.4530209419882848
#pos(a21,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.4531680440771343
#pos(a22,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).
wall(c).}).
%%Value was:18.98444444444446
#pos(a23,
{},
{},
{goal(a).
initiate(rotate).
wall(b).
wall(c).}).
%%Value was:1.488727272727273
#pos(a24,
{},
{},
{goal(a).
initiate(observe).
wall(b).
wall(c).}).
%%Value was:0.5053571428571428
#pos(a25,
{},
{},
{goal(a).
initiate(explore(b)).
wall(c).
wall(b).}).
%%Value was:-0.1357575757575758
#pos(a26,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).
wall(c).}).
%%Value was:-0.1362307692307693
#pos(a27,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).}).
%%Value was:14.495412844036704
#pos(a28,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-2.7522935779816518
#pos(a29,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).}).
%%Value was:-2.752293577981652
#pos(a30,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).}).
%%Value was:-2.752293577981653
#pos(a31,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:3.3272407451827073
#pos(a32,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:0.6612953888679477
#pos(a33,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.}).
%%Value was:0.4965496245179616
#pos(a34,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:0.4124919774655917
#pos(a35,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:-0.1881966506919393
#pos(a36,
{},
{},
{goal(a).
initiate(observe).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:1.013675604395606
#pos(a37,
{},
{},
{goal(a).
initiate(balance).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.14600041237113298
#pos(a38,
{},
{},
{goal(a).
initiate(rotate).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.01107509433962253
#pos(a39,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.04843799999999987
#pos(a40,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
moving.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.10298059040590456
#pos(a41,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.10388334470989814
#pos(a42,
{},
{},
{goal(a).
initiate(avoid).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11048514084507088
#pos(a43,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:5.619576834445119
#pos(a44,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:1.8043809660175627
#pos(a45,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:1.5916474631089537
#pos(a46,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:1.5432697994086144
#pos(a47,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-0.6650661644197743
#pos(a48,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.3441984536082474
#pos(a49,
{},
{},
{goal(a).
initiate(avoid).
lava.}).
%%Value was:14.230769230769228
#pos(a50,
{},
{},
{goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.5957085020242916
#pos(a51,
{},
{},
{goal(a).
initiate(observe).
lava.}).
%%Value was:-2.884615384615385
#pos(a52,
{},
{},
{goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.8846153846153855
#pos(a53,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:15.712496869521656
#pos(a54,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:2.081159420289855
#pos(a55,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.3083333333333333
#pos(a56,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:3.1748533333333366
#pos(a57,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.26310161290322587
#pos(a58,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.20218367346938845
#pos(a59,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.016786394557823166
#pos(a60,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.12706762589928064
#pos(a61,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.1324324324324326
#pos(a62,
{},
{},
{goal(a).
initiate(climb).
platform.
ramp.}).
%%Value was:0.5916917319458234
#pos(a63,
{},
{},
{goal(a).
initiate(rotate).
platform.
ramp.}).
%%Value was:-0.14664417866114882
#pos(a64,
{},
{},
{goal(a).
initiate(interact(a)).
platform.
ramp.}).
%%Value was:-0.1709164125574723
#pos(a65,
{},
{},
{goal(a).
initiate(observe).
platform.
ramp.}).
%%Value was:-0.1715699208443287
#pos(a66,
{},
{},
{goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.39150315789473755
#pos(a67,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11580900900900919
#pos(a68,
{},
{},
{goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11615000000000018
#pos(a69,
{},
{},
{goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11636851851851869
#pos(a70,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.11661730769230788
#pos(a71,
{},
{},
{goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.1167395833333335
#pos(a72,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11686728971962634
#pos(a73,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).}).
%%Value was:6.4799999999999995
#pos(a74,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).}).
%%Value was:-0.13440000000000002
#pos(a75,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a76,
{},
{},
{goal(a).
initiate(avoid).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a77,
{},
{},
{goal(a).
initiate(observe).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a78,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:1.342871594933901
#pos(a79,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.2712953150334812
#pos(a80,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.39007301033570574
#pos(a81,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-0.5779455533772198
#pos(a82,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:5.069931271477661
#pos(a83,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:4.475378527543475
#pos(a84,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:3.088518256013744
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a4, a5).
#brave_ordering(b4@10, a4, a6).
#brave_ordering(b5@10, a7, a8).
#brave_ordering(b6@10, a7, a9).
#brave_ordering(b7@10, a7, a10).
#brave_ordering(b8@10, a11, a12).
#brave_ordering(b9@10, a11, a13).
#brave_ordering(b10@10, a11, a14).
#brave_ordering(b11@10, a15, a16).
#brave_ordering(b12@10, a15, a17).
#brave_ordering(b13@10, a15, a18).
#brave_ordering(b14@10, a15, a19).
#brave_ordering(b15@10, a15, a20).
#brave_ordering(b16@10, a15, a21).
#brave_ordering(b17@10, a22, a23).
#brave_ordering(b18@10, a22, a24).
#brave_ordering(b19@10, a22, a25).
#brave_ordering(b20@10, a22, a26).
#brave_ordering(b21@10, a27, a28).
#brave_ordering(b22@10, a27, a29).
#brave_ordering(b23@10, a27, a30).
#brave_ordering(b24@10, a31, a32).
#brave_ordering(b25@10, a31, a33).
#brave_ordering(b26@10, a31, a34).
#brave_ordering(b27@10, a31, a35).
#brave_ordering(b28@10, a36, a37).
#brave_ordering(b29@10, a36, a38).
#brave_ordering(b30@10, a36, a39).
#brave_ordering(b31@10, a36, a40).
#brave_ordering(b32@10, a36, a41).
#brave_ordering(b33@10, a36, a42).
#brave_ordering(b34@10, a43, a44).
#brave_ordering(b35@10, a43, a45).
#brave_ordering(b36@10, a43, a46).
#brave_ordering(b37@10, a43, a47).
#brave_ordering(b38@10, a43, a48).
#brave_ordering(b39@10, a49, a50).
#brave_ordering(b40@10, a49, a51).
#brave_ordering(b41@10, a49, a52).
#brave_ordering(b42@10, a53, a54).
#brave_ordering(b43@10, a53, a55).
#brave_ordering(b44@10, a56, a57).
#brave_ordering(b45@10, a56, a58).
#brave_ordering(b46@10, a56, a59).
#brave_ordering(b47@10, a56, a60).
#brave_ordering(b48@10, a56, a61).
#brave_ordering(b49@10, a62, a63).
#brave_ordering(b50@10, a62, a64).
#brave_ordering(b51@10, a62, a65).
#brave_ordering(b52@10, a66, a67).
#brave_ordering(b53@10, a66, a68).
#brave_ordering(b54@10, a66, a69).
#brave_ordering(b55@10, a66, a70).
#brave_ordering(b56@10, a66, a71).
#brave_ordering(b57@10, a66, a72).
#brave_ordering(b58@10, a73, a74).
#brave_ordering(b59@10, a73, a75).
#brave_ordering(b60@10, a73, a76).
#brave_ordering(b61@10, a73, a77).
#brave_ordering(b62@10, a78, a79).
#brave_ordering(b63@10, a78, a80).
#brave_ordering(b64@10, a78, a81).
#brave_ordering(b65@10, a82, a83).
#brave_ordering(b66@10, a82, a84).
