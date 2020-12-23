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
#modeo(1, danger).

#weight(-1).
#maxv(4).
#maxp(9).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(rotate).}).
%%Value was:-0.20354595161532685
#pos(a1,
{},
{},
{initiate(observe).}).
%%Value was:-0.28650436850416605
#pos(a2,
{},
{},
{initiate(observe).
occludes(a).
platform.
wall(a).}).
%%Value was:-0.1542000799786725
#pos(a3,
{},
{},
{initiate(rotate).
occludes(a).
platform.
wall(a).}).
%%Value was:-0.15896573426573446
#pos(a4,
{},
{},
{initiate(explore(a)).
occludes(a).
platform.
wall(a).}).
%%Value was:-0.18965702479338892
#pos(a5,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:5.619576834445119
#pos(a6,
{},
{},
{goal1.
initiate(balance).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:1.8043809660175627
#pos(a7,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:1.5916474631089537
#pos(a8,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:1.5432697994086144
#pos(a9,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-0.6650661644197743
#pos(a10,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-2.3441984536082474
#pos(a11,
{},
{},
{goal(a).
initiate(interact(a)).
platform.}).
%%Value was:-0.18757664721840256
#pos(a12,
{},
{},
{goal(a).
initiate(rotate).
platform.}).
%%Value was:-0.18873680738786253
#pos(a13,
{},
{},
{goal(a).
initiate(observe).
platform.}).
%%Value was:-0.18912551828119092
#pos(a14,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
platform.
ramp.}).
%%Value was:19.604221635883906
#pos(a15,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.1978891820580475
#pos(a16,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.1978891820580475
#pos(a17,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.1978891820580475
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
wall(b).}).
%%Value was:-0.4958677685950413
#pos(a19,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(c,b).
on(agent,platform).
platform.
wall(b).
wall(c).}).
%%Value was:-0.4958677685950413
#pos(a20,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).}).
%%Value was:-0.49586776859504134
#pos(a21,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(a,b).
on(agent,platform).
platform.
wall(b).
wall(a).}).
%%Value was:-0.49586776859504134
#pos(a22,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).}).
%%Value was:-0.49586776859504134
#pos(a23,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(b,a).
on(agent,platform).
platform.
wall(a).
wall(b).}).
%%Value was:-0.49586776859504134
#pos(a24,
{},
{},
{goal(a).
initiate(observe).
platform.
wall(b).}).
%%Value was:-0.133
#pos(a25,
{},
{},
{goal(a).
initiate(explore(b)).
platform.
wall(b).}).
%%Value was:-0.14
#pos(a26,
{},
{},
{initiate(explore(a)).
occludes(a).
wall(a).}).
%%Value was:-0.09557227908221301
#pos(a27,
{},
{},
{initiate(rotate).
occludes(a).
wall(a).}).
%%Value was:-0.43777134856434835
#pos(a28,
{},
{},
{initiate(observe).
occludes(a).
wall(a).}).
%%Value was:-0.5325591190055229
#pos(a29,
{},
{},
{initiate(observe).
platform.
ramp.}).
%%Value was:-0.19788918205804765
#pos(a30,
{},
{},
{initiate(climb).
platform.
ramp.}).
%%Value was:-0.19788918205804765
#pos(a31,
{},
{},
{initiate(rotate).
platform.
ramp.}).
%%Value was:-0.19788918205804765
#pos(a32,
{},
{},
{initiate(rotate).
lava.
occludes(a).
platform.
wall(a).}).
%%Value was:-0.1290600000000001
#pos(a33,
{},
{},
{initiate(avoid).
lava.
occludes(a).
platform.
wall(a).}).
%%Value was:-0.12952222222222232
#pos(a34,
{},
{},
{initiate(observe).
lava.
occludes(a).
platform.
wall(a).}).
%%Value was:-0.13016793893129788
#pos(a35,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
platform.
wall(a).}).
%%Value was:-0.139728155339806
#pos(a36,
{},
{},
{initiate(observe).
lava.
occludes(a).
wall(a).}).
%%Value was:-0.1345
#pos(a37,
{},
{},
{initiate(avoid).
lava.
occludes(a).
wall(a).}).
%%Value was:-0.13720000000000004
#pos(a38,
{},
{},
{initiate(rotate).
lava.
occludes(a).
wall(a).}).
%%Value was:-0.13809090909090915
#pos(a39,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
wall(a).}).
%%Value was:-0.14000000000000007
#pos(a40,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:15.712496869521656
#pos(a41,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:2.081159420289855
#pos(a42,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:1.3083333333333333
#pos(a43,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
wall(b).}).
%%Value was:-0.133
#pos(a44,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a45,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a46,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a47,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a48,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.39150315789473755
#pos(a49,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11580900900900919
#pos(a50,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11615000000000018
#pos(a51,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11636851851851869
#pos(a52,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.11661730769230788
#pos(a53,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.1167395833333335
#pos(a54,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11686728971962634
#pos(a55,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.}).
%%Value was:14.230769230769228
#pos(a56,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.}).
%%Value was:-2.732136752136752
#pos(a57,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.}).
%%Value was:-2.884615384615385
#pos(a58,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.8846153846153855
#pos(a59,
{},
{},
{initiate(drop(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.14
#pos(a60,
{},
{},
{initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.14
#pos(a61,
{},
{},
{initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.14
#pos(a62,
{},
{},
{initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.14000000000000004
#pos(a63,
{},
{},
{initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.14000000000000004
#pos(a64,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).}).
%%Value was:15.522976067493126
#pos(a65,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).}).
%%Value was:0.13508377365307345
#pos(a66,
{},
{},
{goal(a).
initiate(rotate).
wall(b).}).
%%Value was:-0.32099253403601197
#pos(a67,
{},
{},
{goal(a).
initiate(observe).
wall(b).}).
%%Value was:-0.9816989320351721
#pos(a68,
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
#pos(a69,
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
#pos(a70,
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
#pos(a71,
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
#pos(a72,
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
#pos(a73,
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
#pos(a74,
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
#pos(a75,
{},
{},
{initiate(explore(a)).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:3.1748533333333366
#pos(a76,
{},
{},
{initiate(balance).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.26310161290322587
#pos(a77,
{},
{},
{initiate(observe).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.20218367346938845
#pos(a78,
{},
{},
{initiate(rotate).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.016786394557823166
#pos(a79,
{},
{},
{initiate(drop(a)).
lava.
occludes(b).
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.12706762589928064
#pos(a80,
{},
{},
{initiate(avoid).
lava.
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.1324324324324326
#pos(a81,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
platform.
wall(b).}).
%%Value was:-0.12911111111111115
#pos(a82,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
platform.
wall(b).}).
%%Value was:-0.13066666666666668
#pos(a83,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
platform.
wall(b).}).
%%Value was:-0.13440000000000002
#pos(a84,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
platform.
wall(b).}).
%%Value was:-0.1365
#pos(a85,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
platform.
wall(b).}).
%%Value was:-0.14
#pos(a86,
{},
{},
{initiate(rotate).
lava.}).
%%Value was:-0.13262307692307695
#pos(a87,
{},
{},
{initiate(observe).
lava.}).
%%Value was:-0.13557600000000003
#pos(a88,
{},
{},
{initiate(avoid).
lava.}).
%%Value was:-0.13939130434782615
#pos(a89,
{},
{},
{initiate(rotate).
platform.}).
%%Value was:-0.7739916530190307
#pos(a90,
{},
{},
{initiate(observe).
platform.}).
%%Value was:-0.9790418991713368
#pos(a91,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:5.720096844736025
#pos(a92,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:0.10239336971902147
#pos(a93,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-2.101637922728587
#pos(a94,
{},
{},
{goal1.
initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-1.6320160366552126
#pos(a95,
{},
{},
{goal1.
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:-1.7850000000000008
#pos(a96,
{},
{},
{goal1.
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-2.1741408934707906
#pos(a97,
{},
{},
{goal1.
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-2.8260309278350517
#pos(a98,
{},
{},
{goal1.
initiate(collect).
on(agent,platform).
platform.}).
%%Value was:-3.1927522649172135
#pos(a99,
{},
{},
{initiate(balance).
occludes(a).
occludes(b).
occludes(c).
occludes_more(b,a).
occludes_more(c,a).
occludes_more(c,b).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.49586776859504134
#pos(a100,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes(d).
occludes_more(c,b).
occludes_more(d,b).
occludes_more(d,c).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(d).}).
%%Value was:-0.49586776859504134
#pos(a101,
{},
{},
{initiate(explore(a)).
occludes(a).
occludes(b).
occludes(c).
occludes_more(b,a).
occludes_more(c,a).
occludes_more(c,b).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.4958677685950414
#pos(a102,
{},
{},
{initiate(rotate).
occludes(a).
occludes(b).
occludes(c).
occludes_more(b,a).
occludes_more(c,a).
occludes_more(c,b).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.4958677685950414
#pos(a103,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes(c).
occludes_more(a,b).
occludes_more(c,b).
occludes_more(c,a).
on(agent,platform).
platform.
wall(b).
wall(a).
wall(c).}).
%%Value was:-0.4958677685950414
#pos(a104,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(c).
occludes(a).
occludes_more(c,b).
occludes_more(a,b).
occludes_more(a,c).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(a).}).
%%Value was:-0.4958677685950414
#pos(a105,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes(c).
occludes_more(b,a).
occludes_more(c,a).
occludes_more(c,b).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-0.4958677685950414
#pos(a106,
{},
{},
{goal(a).
initiate(climb).
platform.
ramp.}).
%%Value was:0.5916917319458234
#pos(a107,
{},
{},
{goal(a).
initiate(rotate).
platform.
ramp.}).
%%Value was:-0.14664417866114882
#pos(a108,
{},
{},
{goal(a).
initiate(interact(a)).
platform.
ramp.}).
%%Value was:-0.1709164125574723
#pos(a109,
{},
{},
{goal(a).
initiate(observe).
platform.
ramp.}).
%%Value was:-0.1715699208443287
#pos(a110,
{},
{},
{initiate(rotate).
lava.
platform.}).
%%Value was:-0.14
#pos(a111,
{},
{},
{initiate(observe).
lava.
platform.}).
%%Value was:-0.14
#pos(a112,
{},
{},
{initiate(avoid).
lava.
platform.}).
%%Value was:-0.14
#pos(a113,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).
wall(c).}).
%%Value was:19.72
#pos(a114,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a115,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a116,
{},
{},
{goal(a).
initiate(avoid).
lava.
wall(b).
wall(c).}).
%%Value was:-0.14
#pos(a117,
{},
{},
{goal(a).
initiate(balance).
on(agent,platform).
platform.}).
%%Value was:3.3272407451827073
#pos(a118,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:0.6612953888679477
#pos(a119,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.}).
%%Value was:0.4965496245179616
#pos(a120,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:0.4124919774655917
#pos(a121,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:-0.1881966506919393
#pos(a122,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:1.013675604395606
#pos(a123,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.14600041237113298
#pos(a124,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.01107509433962253
#pos(a125,
{},
{},
{danger.
goal(a).
initiate(explore(b)).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.04843799999999987
#pos(a126,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
moving.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.10298059040590456
#pos(a127,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.10388334470989814
#pos(a128,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.11048514084507088
#pos(a129,
{},
{},
{danger.
goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12600000000000006
#pos(a130,
{},
{},
{danger.
goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12775000000000003
#pos(a131,
{},
{},
{danger.
goal(a).
initiate(avoid).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.12880000000000003
#pos(a132,
{},
{},
{danger.
goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.1291111111111111
#pos(a133,
{},
{},
{danger.
goal(a).
initiate(balance).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.1306666666666667
#pos(a134,
{},
{},
{danger.
goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.13109090909090912
#pos(a135,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).}).
%%Value was:9.79
#pos(a136,
{},
{},
{goal(a).
initiate(avoid).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a137,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a138,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).}).
%%Value was:-0.14
#pos(a139,
{},
{},
{initiate(balance).
on(agent,platform).
platform.}).
%%Value was:1.342871594933901
#pos(a140,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:-0.2712953150334812
#pos(a141,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.39007301033570574
#pos(a142,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-0.5779455533772198
#pos(a143,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).
wall(c).}).
%%Value was:18.98444444444446
#pos(a144,
{},
{},
{goal(a).
initiate(rotate).
wall(b).
wall(c).}).
%%Value was:1.488727272727273
#pos(a145,
{},
{},
{goal(a).
initiate(observe).
wall(b).
wall(c).}).
%%Value was:0.5053571428571428
#pos(a146,
{},
{},
{goal(a).
initiate(explore(b)).
wall(c).
wall(b).}).
%%Value was:-0.1357575757575758
#pos(a147,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).
wall(c).}).
%%Value was:-0.1362307692307693
#pos(a148,
{},
{},
{initiate(rotate).
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.24396033057851244
#pos(a149,
{},
{},
{initiate(observe).
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.30252600875060776
#pos(a150,
{},
{},
{initiate(drop(a)).
occludes(b).
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.3156005509641874
#pos(a151,
{},
{},
{initiate(balance).
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.3161838842975207
#pos(a152,
{},
{},
{initiate(explore(a)).
occludes(a).
on(agent,platform).
platform.
wall(a).}).
%%Value was:-0.42914256198347106
#pos(a153,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:5.069931271477661
#pos(a154,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:4.475378527543475
#pos(a155,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:3.088518256013744
#pos(a156,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).}).
%%Value was:14.495412844036704
#pos(a157,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-2.7522935779816518
#pos(a158,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).}).
%%Value was:-2.752293577981652
#pos(a159,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).}).
%%Value was:-2.752293577981653
#pos(a160,
{},
{},
{initiate(observe).
occludes(a).
occludes(b).
occludes_more(a,b).
on(agent,platform).
platform.
wall(a).
wall(b).}).
%%Value was:-0.49586776859504134
#pos(a161,
{},
{},
{initiate(explore(a)).
occludes(b).
occludes(a).
occludes_more(b,a).
on(agent,platform).
platform.
wall(b).
wall(a).}).
%%Value was:-0.49586776859504134
#pos(a162,
{},
{},
{initiate(drop(a)).
occludes(b).
occludes(c).
occludes_more(b,c).
on(agent,platform).
platform.
wall(b).
wall(c).}).
%%Value was:-0.49586776859504134
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a5, a8).
#brave_ordering(b6@10, a5, a9).
#brave_ordering(b7@10, a5, a10).
#brave_ordering(b8@10, a11, a12).
#brave_ordering(b9@10, a11, a13).
#brave_ordering(b10@10, a14, a15).
#brave_ordering(b11@10, a14, a16).
#brave_ordering(b12@10, a14, a17).
#brave_ordering(b13@10, a18, a19).
#brave_ordering(b14@10, a18, a20).
#brave_ordering(b15@10, a18, a21).
#brave_ordering(b16@10, a18, a22).
#brave_ordering(b17@10, a18, a23).
#brave_ordering(b18@10, a24, a25).
#brave_ordering(b19@10, a26, a27).
#brave_ordering(b20@10, a26, a28).
#brave_ordering(b21@10, a29, a30).
#brave_ordering(b22@10, a29, a31).
#brave_ordering(b23@10, a32, a33).
#brave_ordering(b24@10, a32, a34).
#brave_ordering(b25@10, a32, a35).
#brave_ordering(b26@10, a36, a37).
#brave_ordering(b27@10, a36, a38).
#brave_ordering(b28@10, a36, a39).
#brave_ordering(b29@10, a40, a41).
#brave_ordering(b30@10, a40, a42).
#brave_ordering(b31@10, a43, a44).
#brave_ordering(b32@10, a43, a45).
#brave_ordering(b33@10, a43, a46).
#brave_ordering(b34@10, a43, a47).
#brave_ordering(b35@10, a48, a49).
#brave_ordering(b36@10, a48, a50).
#brave_ordering(b37@10, a48, a51).
#brave_ordering(b38@10, a48, a52).
#brave_ordering(b39@10, a48, a53).
#brave_ordering(b40@10, a48, a54).
#brave_ordering(b41@10, a55, a56).
#brave_ordering(b42@10, a55, a57).
#brave_ordering(b43@10, a55, a58).
#brave_ordering(b44@10, a59, a60).
#brave_ordering(b45@10, a59, a61).
#brave_ordering(b46@10, a59, a62).
#brave_ordering(b47@10, a59, a63).
#brave_ordering(b48@10, a64, a65).
#brave_ordering(b49@10, a64, a66).
#brave_ordering(b50@10, a64, a67).
#brave_ordering(b51@10, a68, a69).
#brave_ordering(b52@10, a68, a70).
#brave_ordering(b53@10, a68, a71).
#brave_ordering(b54@10, a68, a72).
#brave_ordering(b55@10, a68, a73).
#brave_ordering(b56@10, a68, a74).
#brave_ordering(b57@10, a75, a76).
#brave_ordering(b58@10, a75, a77).
#brave_ordering(b59@10, a75, a78).
#brave_ordering(b60@10, a75, a79).
#brave_ordering(b61@10, a75, a80).
#brave_ordering(b62@10, a81, a82).
#brave_ordering(b63@10, a81, a83).
#brave_ordering(b64@10, a81, a84).
#brave_ordering(b65@10, a81, a85).
#brave_ordering(b66@10, a86, a87).
#brave_ordering(b67@10, a86, a88).
#brave_ordering(b68@10, a89, a90).
#brave_ordering(b69@10, a91, a92).
#brave_ordering(b70@10, a91, a93).
#brave_ordering(b71@10, a94, a95).
#brave_ordering(b72@10, a94, a96).
#brave_ordering(b73@10, a94, a97).
#brave_ordering(b74@10, a94, a98).
#brave_ordering(b75@10, a99, a100).
#brave_ordering(b76@10, a99, a101).
#brave_ordering(b77@10, a99, a102).
#brave_ordering(b78@10, a99, a103).
#brave_ordering(b79@10, a99, a104).
#brave_ordering(b80@10, a99, a105).
#brave_ordering(b81@10, a106, a107).
#brave_ordering(b82@10, a106, a108).
#brave_ordering(b83@10, a106, a109).
#brave_ordering(b84@10, a110, a111).
#brave_ordering(b85@10, a110, a112).
#brave_ordering(b86@10, a113, a114).
#brave_ordering(b87@10, a113, a115).
#brave_ordering(b88@10, a113, a116).
#brave_ordering(b89@10, a117, a118).
#brave_ordering(b90@10, a117, a119).
#brave_ordering(b91@10, a117, a120).
#brave_ordering(b92@10, a117, a121).
#brave_ordering(b93@10, a122, a123).
#brave_ordering(b94@10, a122, a124).
#brave_ordering(b95@10, a122, a125).
#brave_ordering(b96@10, a122, a126).
#brave_ordering(b97@10, a122, a127).
#brave_ordering(b98@10, a122, a128).
#brave_ordering(b99@10, a129, a130).
#brave_ordering(b100@10, a129, a131).
#brave_ordering(b101@10, a129, a132).
#brave_ordering(b102@10, a129, a133).
#brave_ordering(b103@10, a129, a134).
#brave_ordering(b104@10, a135, a136).
#brave_ordering(b105@10, a135, a137).
#brave_ordering(b106@10, a135, a138).
#brave_ordering(b107@10, a139, a140).
#brave_ordering(b108@10, a139, a141).
#brave_ordering(b109@10, a139, a142).
#brave_ordering(b110@10, a143, a144).
#brave_ordering(b111@10, a143, a145).
#brave_ordering(b112@10, a143, a146).
#brave_ordering(b113@10, a143, a147).
#brave_ordering(b114@10, a148, a149).
#brave_ordering(b115@10, a148, a150).
#brave_ordering(b116@10, a148, a151).
#brave_ordering(b117@10, a148, a152).
#brave_ordering(b118@10, a153, a154).
#brave_ordering(b119@10, a153, a155).
#brave_ordering(b120@10, a156, a157).
#brave_ordering(b121@10, a156, a158).
#brave_ordering(b122@10, a156, a159).
#brave_ordering(b123@10, a160, a161).
#brave_ordering(b124@10, a160, a162).
