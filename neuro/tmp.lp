#modeo(1, initiate(rotate), (positive)).
#modeo(1, initiate(observe), (positive)).
#modeo(1, initiate(climb), (positive)).
#modeo(1, initiate(collect), (positive)).
#modeo(1, initiate(interact(var(x))), (positive)).
#modeo(1, initiate(explore(var(x))), (positive)).
#modeo(1, initiate(balance(var(x))), (positive)).
#modeo(1, initiate(avoid(var(x))), (positive)).
#modeo(1, initiate(drop(var(side))), (positive) ).
#modeo(1, on(agent, platform)).
#modeo(1, occludes_goal(var(x))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, bigger(var(x),var(y))).
#modeo(1, more_goals(var(side))).
#modeo(1, moving).

#weight(-1).
#weight(1).
#maxv(4).
#maxp(9).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(explore(a)).
lava.
occludes_goal(a).
occluding_goal(a,b).
wall(a).}).
%%Value was:0.18573899190343673
#pos(a1,
{},
{},
{initiate(drop(a)).
lava.
occludes_goal(b).
occluding_goal(b,c).
wall(b).}).
%%Value was:-0.0029830162887136604
#pos(a2,
{},
{},
{initiate(rotate).
lava.
occludes_goal(a).
occluding_goal(a,b).
wall(a).}).
%%Value was:-0.11356001849690309
#pos(a3,
{},
{},
{initiate(observe).
lava.
occludes_goal(a).
occluding_goal(a,b).
wall(a).}).
%%Value was:-0.371719872067583
#pos(a4,
{},
{},
{goal(a).
initiate(observe).
lava.
lava(b).
on(agent,platform).
platform.
wall(c).}).
%%Value was:1.590380029238902
#pos(a5,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
lava(c).
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.190763376443053
#pos(a6,
{},
{},
{goal(a).
initiate(rotate).
lava.
lava(b).
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.0922577861950713
#pos(a7,
{},
{},
{goal(a).
initiate(balance(a)).
lava.
lava(b).
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.21419912698626495
#pos(a8,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
lava(c).
on(agent,platform).
platform.
wall(d).}).
%%Value was:-0.29630138116350124
#pos(a9,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
lava(b).
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.46305629850282976
#pos(a10,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
lava(b).
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.48786610171240796
#pos(a11,
{},
{},
{initiate(explore(a)).
occludes_goal(b).
occludes_goal(a).
occludes_goal(c).
occludes_more(a,b).
occludes_more(c,b).
occludes_more(c,a).
occluding_goal(b,d).
occluding_goal(a,e).
occluding_goal(c,f).
on(agent,platform).
platform.
wall(b).
wall(a).
wall(c).}).
%%Value was:1.1075108142678574
#pos(a12,
{},
{},
{initiate(drop(a)).
occludes_goal(b).
occludes_goal(c).
occludes_goal(d).
occludes_more(c,b).
occludes_more(d,b).
occludes_more(d,c).
occluding_goal(b,e).
occluding_goal(c,f).
occluding_goal(d,g).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(d).}).
%%Value was:-0.5992012857609322
#pos(a13,
{},
{},
{initiate(explore(a)).
occludes_goal(b).
occludes_goal(c).
occludes_goal(a).
occludes_more(c,b).
occludes_more(a,b).
occludes_more(a,c).
occluding_goal(b,d).
occluding_goal(c,e).
occluding_goal(a,f).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(a).}).
%%Value was:-0.6284025235714286
#pos(a14,
{},
{},
{initiate(rotate).
occludes_goal(a).
occludes_goal(b).
occludes_goal(c).
occludes_more(b,a).
occludes_more(c,a).
occludes_more(c,b).
occluding_goal(a,d).
occluding_goal(b,e).
occluding_goal(c,f).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-1.00999277518998
#pos(a15,
{},
{},
{initiate(observe).
occludes_goal(a).
occludes_goal(b).
occludes_goal(c).
occludes_more(b,a).
occludes_more(c,a).
occludes_more(c,b).
occluding_goal(a,d).
occluding_goal(b,e).
occluding_goal(c,f).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-1.100341227455357
#pos(a16,
{},
{},
{initiate(explore(a)).
occludes_goal(a).
occludes_goal(b).
occludes_goal(c).
occludes_more(b,a).
occludes_more(c,a).
occludes_more(c,b).
occluding_goal(a,d).
occluding_goal(b,e).
occluding_goal(c,f).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(c).}).
%%Value was:-1.1653536681696428
#pos(a17,
{},
{},
{goal(a).
initiate(rotate).
lava.
lava(b).
on(agent,platform).
platform.}).
%%Value was:2.2819613469047675
#pos(a18,
{},
{},
{goal(a).
initiate(observe).
lava.
lava(b).
on(agent,platform).
platform.}).
%%Value was:-0.03159831736465505
#pos(a19,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
lava(b).
on(agent,platform).
platform.}).
%%Value was:-0.32978973261588235
#pos(a20,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
lava(b).
on(agent,platform).
platform.}).
%%Value was:-0.3365273095267337
#pos(a21,
{},
{},
{goal(a).
initiate(balance(a)).
lava.
lava(b).
on(agent,platform).
platform.}).
%%Value was:-0.42278902868098167
#pos(a22,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
lava(c).
on(agent,platform).
platform.}).
%%Value was:-0.7453987730061351
#pos(a23,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.
ramp.
ramp(b).
ramp(c).}).
%%Value was:0.4619042118291692
#pos(a24,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.
ramp.
ramp(b).
ramp(c).}).
%%Value was:-0.3412293956043956
#pos(a25,
{},
{},
{goal(a).
initiate(climb).
on(agent,platform).
platform.
ramp.
ramp(b).
ramp(c).}).
%%Value was:-0.3791437728937729
#pos(a26,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.
ramp.
ramp(c).
ramp(d).}).
%%Value was:-0.3881055402930403
#pos(a27,
{},
{},
{goal(a).
initiate(balance(a)).
on(agent,platform).
platform.
ramp.
ramp(b).
ramp(c).}).
%%Value was:-0.4246794871794871
#pos(a28,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.
ramp.
ramp(b).
ramp(c).}).
%%Value was:-0.45787545787545786
#pos(a29,
{},
{},
{goal1.
goal1(a).
initiate(drop(b)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:2.280241075030566
#pos(a30,
{},
{},
{goal1.
goal1(a).
initiate(rotate).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-0.26393541062684683
#pos(a31,
{},
{},
{goal1.
goal1(a).
initiate(drop(b)).
more_goals(c).
on(agent,platform).
platform.}).
%%Value was:-0.8808828641696899
#pos(a32,
{},
{},
{goal1.
goal1(a).
initiate(observe).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-1.040628613775627
#pos(a33,
{},
{},
{goal1.
goal1(a).
initiate(collect).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-1.7231091498338087
#pos(a34,
{},
{},
{initiate(explore(a)).
lava.
lava(b).
lava(c).
occludes_goal(a).
occluding_goal(a,d).
platform.
wall(a).}).
%%Value was:4.293912865030675
#pos(a35,
{},
{},
{initiate(rotate).
lava.
lava(a).
lava(b).
occludes_goal(c).
occluding_goal(c,d).
platform.
wall(c).}).
%%Value was:-0.48905613496932526
#pos(a36,
{},
{},
{initiate(drop(a)).
lava.
lava(b).
lava(c).
occludes_goal(d).
occluding_goal(d,e).
platform.
wall(d).}).
%%Value was:-0.5433957055214724
#pos(a37,
{},
{},
{goal(a).
initiate(drop(b)).
platform.
platform(c).
ramp.}).
%%Value was:0.28139851449540987
#pos(a38,
{},
{},
{goal(a).
initiate(climb).
platform.
platform(b).
ramp.}).
%%Value was:0.1513698731227532
#pos(a39,
{},
{},
{goal(a).
initiate(observe).
platform.
platform(b).
ramp.}).
%%Value was:0.09209862772725547
#pos(a40,
{},
{},
{goal(a).
initiate(rotate).
platform.
platform(b).
ramp.}).
%%Value was:-0.126246051977126
#pos(a41,
{},
{},
{goal(a).
initiate(balance(a)).
platform.
platform(b).
ramp.}).
%%Value was:-0.26075829275844037
#pos(a42,
{},
{},
{goal(a).
initiate(interact(a)).
platform.
platform(b).
ramp.}).
%%Value was:-0.2713488510019391
#pos(a43,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).}).
%%Value was:5.185340156603163
#pos(a44,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
wall(c).}).
%%Value was:3.8041333283144336
#pos(a45,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).}).
%%Value was:2.0882467824252977
#pos(a46,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).}).
%%Value was:1.8810725658597323
#pos(a47,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
wall(b).}).
%%Value was:1.6824768669904566
#pos(a48,
{},
{},
{goal(a).
initiate(observe).
lava.
wall(b).}).
%%Value was:1.3629121743114887
#pos(a49,
{},
{},
{goal(a).
initiate(climb).
platform.
platform(b).
platform(c).
ramp.}).
%%Value was:0.16380713209379907
#pos(a50,
{},
{},
{goal(a).
initiate(drop(b)).
platform.
platform(c).
platform(d).
ramp.}).
%%Value was:-0.23447203464030617
#pos(a51,
{},
{},
{goal(a).
initiate(observe).
platform.
platform(b).
platform(c).
ramp.}).
%%Value was:-0.23853470810439564
#pos(a52,
{},
{},
{goal(a).
initiate(interact(a)).
platform.
platform(b).
platform(c).
ramp.}).
%%Value was:-0.290196546310832
#pos(a53,
{},
{},
{goal(a).
initiate(rotate).
platform.
platform(b).
platform(c).
ramp.}).
%%Value was:-0.29234175824175823
#pos(a54,
{},
{},
{goal(a).
initiate(balance(a)).
platform.
platform(b).
platform(c).
ramp.}).
%%Value was:-0.2983868162843406
#pos(a55,
{},
{},
{goal1.
goal1(a).
goal1(b).
initiate(collect).
platform.}).
%%Value was:4.331457891763564
#pos(a56,
{},
{},
{goal1.
goal1(a).
goal1(b).
initiate(observe).
platform.}).
%%Value was:0.8396784777198796
#pos(a57,
{},
{},
{goal1.
goal1(a).
goal1(b).
initiate(drop(c)).
platform.}).
%%Value was:0.2333513190347539
#pos(a58,
{},
{},
{goal1.
goal1(a).
goal1(b).
initiate(rotate).
platform.}).
%%Value was:-0.36643758637983714
#pos(a59,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:1.5159726111246543
#pos(a60,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:0.42242342604781014
#pos(a61,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:0.34954905866129654
#pos(a62,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
lava(c).
wall(d).}).
%%Value was:2.7610531697341516
#pos(a63,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
lava(c).
wall(b).}).
%%Value was:2.1904407975460125
#pos(a64,
{},
{},
{goal(a).
initiate(observe).
lava.
lava(b).
wall(c).}).
%%Value was:-0.7046507668711657
#pos(a65,
{},
{},
{goal(a).
initiate(rotate).
lava.
lava(b).
wall(c).}).
%%Value was:-0.8282208588957056
#pos(a66,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
lava(b).
wall(c).}).
%%Value was:-1.0224948875255624
#pos(a67,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).
wall(c).}).
%%Value was:3.118159509202454
#pos(a68,
{},
{},
{goal(a).
initiate(observe).
lava.
wall(b).
wall(c).}).
%%Value was:2.4849478527607363
#pos(a69,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
wall(c).
wall(d).}).
%%Value was:2.323136996034157
#pos(a70,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(c).
wall(b).}).
%%Value was:1.3645269938650308
#pos(a71,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).
wall(c).}).
%%Value was:-0.6443972392638038
#pos(a72,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).
wall(c).}).
%%Value was:-0.7955521472392638
#pos(a73,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
wall(b).
wall(c).}).
%%Value was:-1.0224948875255624
#pos(a74,
{},
{},
{initiate(explore(a)).
occludes_goal(b).
occludes_goal(a).
occludes_more(a,b).
occluding_goal(b,c).
occluding_goal(a,d).
on(agent,platform).
platform.
wall(b).
wall(a).
wall(e).}).
%%Value was:4.038254022386567
#pos(a75,
{},
{},
{initiate(observe).
occludes_goal(a).
occludes_goal(b).
occludes_more(b,a).
occluding_goal(a,c).
occluding_goal(b,d).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(e).}).
%%Value was:0.7219591042539903
#pos(a76,
{},
{},
{initiate(rotate).
occludes_goal(a).
occludes_goal(b).
occludes_more(b,a).
occluding_goal(a,c).
occluding_goal(b,d).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(e).}).
%%Value was:-0.4412168728156929
#pos(a77,
{},
{},
{initiate(explore(a)).
occludes_goal(b).
occludes_goal(c).
occludes_more(c,b).
occluding_goal(b,d).
occluding_goal(c,e).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(a).}).
%%Value was:-0.45042933274198743
#pos(a78,
{},
{},
{initiate(drop(a)).
occludes_goal(b).
occludes_goal(c).
occludes_more(c,b).
occluding_goal(b,d).
occluding_goal(c,e).
on(agent,platform).
platform.
wall(b).
wall(c).
wall(f).}).
%%Value was:-0.8778163014942217
#pos(a79,
{},
{},
{initiate(explore(a)).
occludes_goal(a).
occludes_goal(b).
occludes_more(b,a).
occluding_goal(a,c).
occluding_goal(b,d).
on(agent,platform).
platform.
wall(a).
wall(b).
wall(e).}).
%%Value was:-1.1251978596026666
#pos(a80,
{},
{},
{initiate(climb).
platform.
platform(a).
ramp.}).
%%Value was:0.3428013613044529
#pos(a81,
{},
{},
{initiate(observe).
platform.
platform(a).
ramp.}).
%%Value was:0.10554975967901528
#pos(a82,
{},
{},
{initiate(drop(a)).
platform.
platform(b).
ramp.}).
%%Value was:-0.22484322794032496
#pos(a83,
{},
{},
{initiate(rotate).
platform.
platform(a).
ramp.}).
%%Value was:-0.2497703802700837
#pos(a84,
{},
{},
{goal1.
goal1(a).
initiate(collect).}).
%%Value was:5.726495726495726
#pos(a85,
{},
{},
{goal1.
goal1(a).
initiate(rotate).}).
%%Value was:4.20824423076923
#pos(a86,
{},
{},
{goal1.
goal1(a).
initiate(observe).}).
%%Value was:1.3422682903846148
#pos(a87,
{},
{},
{goal1.
goal1(a).
initiate(drop(b)).}).
%%Value was:0.7885586102670875
#pos(a88,
{},
{},
{goal1.
initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:0.6635711026182491
#pos(a89,
{},
{},
{goal1.
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.48311372514159534
#pos(a90,
{},
{},
{goal1.
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.5133995606509776
#pos(a91,
{},
{},
{goal1.
initiate(collect).
on(agent,platform).
platform.}).
%%Value was:-3.047724700854701
#pos(a92,
{},
{},
{goal1.
goal1(a).
initiate(drop(b)).
platform.}).
%%Value was:3.0148456836538458
#pos(a93,
{},
{},
{goal1.
goal1(a).
initiate(rotate).
platform.}).
%%Value was:1.2496892407324056
#pos(a94,
{},
{},
{goal1.
goal1(a).
initiate(collect).
platform.}).
%%Value was:0.4186624406457735
#pos(a95,
{},
{},
{goal1.
goal1(a).
initiate(observe).
platform.}).
%%Value was:-0.5862727143406598
#pos(a96,
{},
{},
{initiate(rotate).
lava.
lava(a).}).
%%Value was:1.9159202453987731
#pos(a97,
{},
{},
{initiate(observe).
lava.
lava(a).}).
%%Value was:-0.8282208588957056
#pos(a98,
{},
{},
{initiate(drop(a)).
lava.
lava(b).}).
%%Value was:-0.8287119972733471
#pos(a99,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:0.433674817349606
#pos(a100,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:0.07820384947862451
#pos(a101,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.3183546158894173
#pos(a102,
{},
{},
{goal(a).
initiate(drop(b)).}).
%%Value was:-0.5223343516225567
#pos(a103,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.
ramp.
ramp(b).}).
%%Value was:2.6016483516483517
#pos(a104,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.
ramp.
ramp(c).}).
%%Value was:-0.3481998318139499
#pos(a105,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.
ramp.
ramp(b).}).
%%Value was:-0.36018658424908423
#pos(a106,
{},
{},
{goal(a).
initiate(balance(a)).
on(agent,platform).
platform.
ramp.
ramp(b).}).
%%Value was:-0.4185096153846154
#pos(a107,
{},
{},
{goal(a).
initiate(climb).
on(agent,platform).
platform.
ramp.
ramp(b).}).
%%Value was:-0.45787545787545786
#pos(a108,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.
ramp.
ramp(b).}).
%%Value was:-0.45787545787545786
#pos(a109,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).}).
%%Value was:4.829561198498277
#pos(a110,
{},
{},
{goal(a).
initiate(rotate).
wall(b).}).
%%Value was:2.3188158591312584
#pos(a111,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).}).
%%Value was:2.100738468036431
#pos(a112,
{},
{},
{goal(a).
initiate(observe).
wall(b).}).
%%Value was:1.8449022030744382
#pos(a113,
{},
{},
{goal(a).
initiate(drop(b)).
wall(c).}).
%%Value was:0.5791841855040192
#pos(a114,
{},
{},
{initiate(drop(a)).
lava.}).
%%Value was:0.3667403143905462
#pos(a115,
{},
{},
{initiate(rotate).
lava.}).
%%Value was:0.014481860278005725
#pos(a116,
{},
{},
{initiate(observe).
lava.}).
%%Value was:-0.4260510127510011
#pos(a117,
{},
{},
{goal(a).
initiate(climb).
platform.
ramp.}).
%%Value was:0.727853496704582
#pos(a118,
{},
{},
{goal(a).
initiate(observe).
platform.
ramp.}).
%%Value was:-0.04567124403196277
#pos(a119,
{},
{},
{goal(a).
initiate(drop(b)).
platform.
ramp.}).
%%Value was:-0.06985386054085167
#pos(a120,
{},
{},
{goal(a).
initiate(rotate).
platform.
ramp.}).
%%Value was:-0.07517989214876532
#pos(a121,
{},
{},
{goal(a).
initiate(balance(a)).
platform.
ramp.}).
%%Value was:-0.18563056439730913
#pos(a122,
{},
{},
{goal(a).
initiate(interact(a)).
platform.
ramp.}).
%%Value was:-0.2820250777653433
#pos(a123,
{},
{},
{initiate(climb).
on(agent,platform).
platform.
ramp.
ramp(a).
ramp(b).
ramp(c).}).
%%Value was:2.0530465650183154
#pos(a124,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.
ramp.
ramp(b).
ramp(c).
ramp(d).}).
%%Value was:-0.28856250000000006
#pos(a125,
{},
{},
{initiate(observe).
on(agent,platform).
platform.
ramp.
ramp(a).
ramp(b).
ramp(c).}).
%%Value was:-0.3337912087912088
#pos(a126,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.
ramp.
ramp(a).
ramp(b).
ramp(c).}).
%%Value was:-0.3708791208791209
#pos(a127,
{},
{},
{goal(a).
initiate(balance(a)).
on(agent,platform).
platform.}).
%%Value was:2.587937198229722
#pos(a128,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:1.228600279265831
#pos(a129,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:0.9879818367604648
#pos(a130,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:0.7975471005917238
#pos(a131,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.}).
%%Value was:0.534753004910989
#pos(a132,
{},
{},
{initiate(explore(a)).
lava.
lava(b).
lava(c).
occludes_goal(a).
occluding_goal(a,d).
on(agent,platform).
platform.
wall(a).}).
%%Value was:4.995610498409994
#pos(a133,
{},
{},
{initiate(drop(a)).
lava.
lava(b).
lava(c).
occludes_goal(d).
occluding_goal(d,e).
on(agent,platform).
platform.
wall(d).}).
%%Value was:0.035096780590197746
#pos(a134,
{},
{},
{initiate(rotate).
lava.
lava(a).
lava(b).
occludes_goal(c).
occluding_goal(c,d).
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.1497820702782302
#pos(a135,
{},
{},
{initiate(observe).
lava.
lava(a).
lava(b).
occludes_goal(c).
occluding_goal(c,d).
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.41357073820786955
#pos(a136,
{},
{},
{initiate(drop(a)).
lava.
lava(b).
on(agent,platform).
platform.}).
%%Value was:3.4754547054754603
#pos(a137,
{},
{},
{initiate(observe).
lava.
lava(a).
on(agent,platform).
platform.}).
%%Value was:1.197142826054487
#pos(a138,
{},
{},
{initiate(rotate).
lava.
lava(a).
on(agent,platform).
platform.}).
%%Value was:-0.18915787836896816
#pos(a139,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
lava(b).
lava(c).
on(agent,platform).
platform.
wall(d).}).
%%Value was:0.6802762956654784
#pos(a140,
{},
{},
{goal(a).
initiate(observe).
lava.
lava(b).
lava(c).
on(agent,platform).
platform.
wall(d).}).
%%Value was:0.4960375810331385
#pos(a141,
{},
{},
{goal(a).
initiate(balance(a)).
lava.
lava(b).
lava(c).
on(agent,platform).
platform.
wall(d).}).
%%Value was:0.20678839344590438
#pos(a142,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
lava(c).
lava(d).
on(agent,platform).
platform.
wall(e).}).
%%Value was:0.16865031209577655
#pos(a143,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
lava(c).
lava(d).
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.023620964002267764
#pos(a144,
{},
{},
{goal(a).
initiate(rotate).
lava.
lava(b).
lava(c).
on(agent,platform).
platform.
wall(d).}).
%%Value was:-0.34268161919474294
#pos(a145,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
lava(b).
lava(c).
on(agent,platform).
platform.
wall(d).}).
%%Value was:-0.5339116975640177
#pos(a146,
{},
{},
{goal(a).
initiate(balance(a)).
on(agent,platform).
platform.
ramp.
ramp(b).
ramp(c).
ramp(d).
ramp(e).
ramp(f).}).
%%Value was:9.542124542124542
#pos(a147,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.
ramp.
ramp(b).
ramp(c).
ramp(d).
ramp(e).
ramp(f).}).
%%Value was:-0.45787545787545786
#pos(a148,
{},
{},
{goal(a).
initiate(balance(a)).
on(agent,platform).
platform.
ramp.}).
%%Value was:1.0830326075294348
#pos(a149,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.28082669630095974
#pos(a150,
{},
{},
{goal(a).
initiate(climb).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.295868366373779
#pos(a151,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.3400957726844315
#pos(a152,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.39440132783882786
#pos(a153,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.42731799450549457
#pos(a154,
{},
{},
{initiate(drop(a)).
on(agent,ramp).
ramp.}).
%%Value was:2.6112206043956045
#pos(a155,
{},
{},
{initiate(rotate).
on(agent,ramp).
ramp.}).
%%Value was:2.350098543956044
#pos(a156,
{},
{},
{initiate(explore(a)).
lava.
lava(b).
occludes_goal(a).
occluding_goal(a,c).
on(agent,platform).
platform.
wall(a).}).
%%Value was:3.3886589025385794
#pos(a157,
{},
{},
{initiate(rotate).
lava.
lava(a).
occludes_goal(b).
occluding_goal(b,c).
on(agent,platform).
platform.
wall(b).}).
%%Value was:1.2709260770127413
#pos(a158,
{},
{},
{initiate(observe).
lava.
lava(a).
occludes_goal(b).
occluding_goal(b,c).
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.10578348512248686
#pos(a159,
{},
{},
{initiate(drop(a)).
lava.
lava(b).
occludes_goal(c).
occluding_goal(c,d).
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.24615551296706722
#pos(a160,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).}).
%%Value was:3.895549318364074
#pos(a161,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).}).
%%Value was:1.0054247421139535
#pos(a162,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).}).
%%Value was:-1.0693225098689219
#pos(a163,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).}).
%%Value was:-1.2138502101142055
#pos(a164,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-5.813953488372094
#pos(a165,
{},
{},
{goal(a).
initiate(observe).
lava.
lava(b).
moving.
on(agent,platform).
platform.
wall(c).}).
%%Value was:1.1007457928233457
#pos(a166,
{},
{},
{goal(a).
initiate(balance(a)).
lava.
lava(b).
moving.
on(agent,platform).
platform.
wall(c).}).
%%Value was:0.32872391401685425
#pos(a167,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
lava(c).
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.2592023953989085
#pos(a168,
{},
{},
{goal(a).
initiate(rotate).
lava.
lava(b).
moving.
on(agent,platform).
platform.
wall(c).}).
%%Value was:0.053558046187230056
#pos(a169,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
lava(c).
moving.
on(agent,platform).
platform.
wall(d).}).
%%Value was:-0.11193756761434943
#pos(a170,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
lava(b).
moving.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.5476504178224653
#pos(a171,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
lava(b).
moving.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.5910548232989912
#pos(a172,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).
wall(c).}).
%%Value was:8.448566178141329
#pos(a173,
{},
{},
{goal(a).
initiate(explore(b)).
wall(c).
wall(b).}).
%%Value was:3.782087430962338
#pos(a174,
{},
{},
{goal(a).
initiate(rotate).
wall(b).
wall(c).}).
%%Value was:3.081906240674338
#pos(a175,
{},
{},
{goal(a).
initiate(drop(b)).
wall(c).
wall(d).}).
%%Value was:2.418231579149442
#pos(a176,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).
wall(c).}).
%%Value was:2.087977112945431
#pos(a177,
{},
{},
{goal(a).
initiate(observe).
wall(b).
wall(c).}).
%%Value was:1.7511742064731763
#pos(a178,
{},
{},
{initiate(explore(a)).
lava.
occludes_goal(a).
occluding_goal(a,b).
on(agent,platform).
platform.
wall(a).}).
%%Value was:3.226947919608727
#pos(a179,
{},
{},
{initiate(observe).
lava.
occludes_goal(a).
occluding_goal(a,b).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.9550232630039704
#pos(a180,
{},
{},
{initiate(rotate).
lava.
occludes_goal(a).
occluding_goal(a,b).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.442744033159693
#pos(a181,
{},
{},
{initiate(drop(a)).
lava.
occludes_goal(b).
occluding_goal(b,c).
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.44668878652110006
#pos(a182,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.}).
%%Value was:4.8793164221644165
#pos(a183,
{},
{},
{goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.03392729102589504
#pos(a184,
{},
{},
{goal(a).
initiate(observe).
lava.}).
%%Value was:-0.29916178158841616
#pos(a185,
{},
{},
{goal(a).
initiate(drop(b)).
lava.}).
%%Value was:-0.838335724686117
#pos(a186,
{},
{},
{goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.66767197676617
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a4, a5).
#brave_ordering(b4@10, a4, a6).
#brave_ordering(b5@10, a4, a7).
#brave_ordering(b6@10, a4, a8).
#brave_ordering(b7@10, a4, a9).
#brave_ordering(b8@10, a4, a10).
#brave_ordering(b9@10, a11, a12).
#brave_ordering(b10@10, a11, a13).
#brave_ordering(b11@10, a11, a14).
#brave_ordering(b12@10, a11, a15).
#brave_ordering(b13@10, a11, a16).
#brave_ordering(b14@10, a17, a18).
#brave_ordering(b15@10, a17, a19).
#brave_ordering(b16@10, a17, a20).
#brave_ordering(b17@10, a17, a21).
#brave_ordering(b18@10, a17, a22).
#brave_ordering(b19@10, a23, a24).
#brave_ordering(b20@10, a23, a25).
#brave_ordering(b21@10, a23, a26).
#brave_ordering(b22@10, a23, a27).
#brave_ordering(b23@10, a23, a28).
#brave_ordering(b24@10, a29, a30).
#brave_ordering(b25@10, a29, a31).
#brave_ordering(b26@10, a29, a32).
#brave_ordering(b27@10, a29, a33).
#brave_ordering(b28@10, a34, a35).
#brave_ordering(b29@10, a34, a36).
#brave_ordering(b30@10, a37, a38).
#brave_ordering(b31@10, a37, a39).
#brave_ordering(b32@10, a37, a40).
#brave_ordering(b33@10, a37, a41).
#brave_ordering(b34@10, a37, a42).
#brave_ordering(b35@10, a43, a44).
#brave_ordering(b36@10, a43, a45).
#brave_ordering(b37@10, a43, a46).
#brave_ordering(b38@10, a43, a47).
#brave_ordering(b39@10, a43, a48).
#brave_ordering(b40@10, a49, a50).
#brave_ordering(b41@10, a49, a51).
#brave_ordering(b42@10, a49, a52).
#brave_ordering(b43@10, a49, a53).
#brave_ordering(b44@10, a49, a54).
#brave_ordering(b45@10, a55, a56).
#brave_ordering(b46@10, a55, a57).
#brave_ordering(b47@10, a55, a58).
#brave_ordering(b48@10, a59, a60).
#brave_ordering(b49@10, a59, a61).
#brave_ordering(b50@10, a62, a63).
#brave_ordering(b51@10, a62, a64).
#brave_ordering(b52@10, a62, a65).
#brave_ordering(b53@10, a62, a66).
#brave_ordering(b54@10, a67, a68).
#brave_ordering(b55@10, a67, a69).
#brave_ordering(b56@10, a67, a70).
#brave_ordering(b57@10, a67, a71).
#brave_ordering(b58@10, a67, a72).
#brave_ordering(b59@10, a67, a73).
#brave_ordering(b60@10, a74, a75).
#brave_ordering(b61@10, a74, a76).
#brave_ordering(b62@10, a74, a77).
#brave_ordering(b63@10, a74, a78).
#brave_ordering(b64@10, a74, a79).
#brave_ordering(b65@10, a80, a81).
#brave_ordering(b66@10, a80, a82).
#brave_ordering(b67@10, a80, a83).
#brave_ordering(b68@10, a84, a85).
#brave_ordering(b69@10, a84, a86).
#brave_ordering(b70@10, a84, a87).
#brave_ordering(b71@10, a88, a89).
#brave_ordering(b72@10, a88, a90).
#brave_ordering(b73@10, a88, a91).
#brave_ordering(b74@10, a92, a93).
#brave_ordering(b75@10, a92, a94).
#brave_ordering(b76@10, a92, a95).
#brave_ordering(b77@10, a96, a97).
#brave_ordering(b78@10, a96, a98).
#brave_ordering(b79@10, a99, a100).
#brave_ordering(b80@10, a99, a101).
#brave_ordering(b81@10, a99, a102).
#brave_ordering(b82@10, a103, a104).
#brave_ordering(b83@10, a103, a105).
#brave_ordering(b84@10, a103, a106).
#brave_ordering(b85@10, a103, a107).
#brave_ordering(b86@10, a103, a108).
#brave_ordering(b87@10, a109, a110).
#brave_ordering(b88@10, a109, a111).
#brave_ordering(b89@10, a109, a112).
#brave_ordering(b90@10, a109, a113).
#brave_ordering(b91@10, a114, a115).
#brave_ordering(b92@10, a114, a116).
#brave_ordering(b93@10, a117, a118).
#brave_ordering(b94@10, a117, a119).
#brave_ordering(b95@10, a117, a120).
#brave_ordering(b96@10, a117, a121).
#brave_ordering(b97@10, a117, a122).
#brave_ordering(b98@10, a123, a124).
#brave_ordering(b99@10, a123, a125).
#brave_ordering(b100@10, a123, a126).
#brave_ordering(b101@10, a127, a128).
#brave_ordering(b102@10, a127, a129).
#brave_ordering(b103@10, a127, a130).
#brave_ordering(b104@10, a127, a131).
#brave_ordering(b105@10, a132, a133).
#brave_ordering(b106@10, a132, a134).
#brave_ordering(b107@10, a132, a135).
#brave_ordering(b108@10, a136, a137).
#brave_ordering(b109@10, a136, a138).
#brave_ordering(b110@10, a139, a140).
#brave_ordering(b111@10, a139, a141).
#brave_ordering(b112@10, a139, a142).
#brave_ordering(b113@10, a139, a143).
#brave_ordering(b114@10, a139, a144).
#brave_ordering(b115@10, a139, a145).
#brave_ordering(b116@10, a146, a147).
#brave_ordering(b117@10, a148, a149).
#brave_ordering(b118@10, a148, a150).
#brave_ordering(b119@10, a148, a151).
#brave_ordering(b120@10, a148, a152).
#brave_ordering(b121@10, a148, a153).
#brave_ordering(b122@10, a154, a155).
#brave_ordering(b123@10, a156, a157).
#brave_ordering(b124@10, a156, a158).
#brave_ordering(b125@10, a156, a159).
#brave_ordering(b126@10, a160, a161).
#brave_ordering(b127@10, a160, a162).
#brave_ordering(b128@10, a160, a163).
#brave_ordering(b129@10, a160, a164).
#brave_ordering(b130@10, a165, a166).
#brave_ordering(b131@10, a165, a167).
#brave_ordering(b132@10, a165, a168).
#brave_ordering(b133@10, a165, a169).
#brave_ordering(b134@10, a165, a170).
#brave_ordering(b135@10, a165, a171).
#brave_ordering(b136@10, a172, a173).
#brave_ordering(b137@10, a172, a174).
#brave_ordering(b138@10, a172, a175).
#brave_ordering(b139@10, a172, a176).
#brave_ordering(b140@10, a172, a177).
#brave_ordering(b141@10, a178, a179).
#brave_ordering(b142@10, a178, a180).
#brave_ordering(b143@10, a178, a181).
#brave_ordering(b144@10, a182, a183).
#brave_ordering(b145@10, a182, a184).
#brave_ordering(b146@10, a182, a185).
#brave_ordering(b147@10, a182, a186).
