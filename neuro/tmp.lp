#modeo(1, initiate(rotate), (positive)).
#modeo(1, initiate(observe), (positive)).
#modeo(1, initiate(climb), (positive)).
#modeo(1, initiate(collect), (positive)).
#modeo(1, initiate(interact(var(x))), (positive)).
#modeo(1, initiate(explore(var(x))), (positive)).
#modeo(1, initiate(balance(var(x))), (positive)).
#modeo(1, initiate(avoid(var(x))), (positive)).
#modeo(1, initiate(drop(var(side))), (positive) ).
#modeo(1, on(agent, platform), (positive)).
#modeo(1, occludes_goal(var(x)), (positive)).
#modeo(1, occludes_more(var(x),var(y)), (positive)).
#modeo(1, bigger(var(x),var(y)), (positive)).
#modeo(1, more_goals(var(side)), (positive)).
#modeo(1, moving, (positive)).

#weight(-1).
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
on(agent,platform).
platform.
wall(a).}).
%%Value was:3.5753205023959644
#pos(a1,
{},
{},
{initiate(rotate).
lava.
occludes_goal(a).
occluding_goal(a,b).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.7920521846093482
#pos(a2,
{},
{},
{initiate(observe).
lava.
occludes_goal(a).
occluding_goal(a,b).
on(agent,platform).
platform.
wall(a).}).
%%Value was:0.19571980028176492
#pos(a3,
{},
{},
{initiate(drop(a)).
lava.
occludes_goal(b).
occluding_goal(b,c).
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.22749396715991263
#pos(a4,
{},
{},
{goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:2.2819613469047675
#pos(a5,
{},
{},
{goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.03159831736465505
#pos(a6,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.32978973261588235
#pos(a7,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.3365273095267337
#pos(a8,
{},
{},
{goal(a).
initiate(balance(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.42278902868098167
#pos(a9,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.7453987730061351
#pos(a10,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:0.433674817349606
#pos(a11,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:0.07820384947862451
#pos(a12,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-0.3183546158894173
#pos(a13,
{},
{},
{goal(a).
initiate(drop(b)).}).
%%Value was:-0.5223343516225567
#pos(a14,
{},
{},
{initiate(drop(a)).
lava.}).
%%Value was:0.3297675624834155
#pos(a15,
{},
{},
{initiate(rotate).
lava.}).
%%Value was:0.07328923301369955
#pos(a16,
{},
{},
{initiate(observe).
lava.}).
%%Value was:-0.43156018872558605
#pos(a17,
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
#pos(a18,
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
#pos(a19,
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
#pos(a20,
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
#pos(a21,
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
#pos(a22,
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
#pos(a23,
{},
{},
{initiate(climb).
on(agent,platform).
platform.
ramp.}).
%%Value was:0.2568192279477451
#pos(a24,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.27836383530169573
#pos(a25,
{},
{},
{initiate(observe).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.29564444134615386
#pos(a26,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.3346277243640619
#pos(a27,
{},
{},
{goal1.
initiate(rotate).}).
%%Value was:0.25874030965527484
#pos(a28,
{},
{},
{goal1.
initiate(collect).}).
%%Value was:-0.6522177136752141
#pos(a29,
{},
{},
{goal1.
initiate(drop(a)).}).
%%Value was:-1.119906857071649
#pos(a30,
{},
{},
{goal1.
initiate(observe).}).
%%Value was:-1.1997122556516957
#pos(a31,
{},
{},
{initiate(drop(a)).
on(agent,ramp).
ramp.}).
%%Value was:2.6112206043956045
#pos(a32,
{},
{},
{initiate(rotate).
on(agent,ramp).
ramp.}).
%%Value was:2.350098543956044
#pos(a33,
{},
{},
{goal(a).
initiate(balance(a)).
on(agent,platform).
platform.}).
%%Value was:2.587937198229722
#pos(a34,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:1.228600279265831
#pos(a35,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:0.9879818367604648
#pos(a36,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.}).
%%Value was:0.7975471005917238
#pos(a37,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.}).
%%Value was:0.534753004910989
#pos(a38,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).}).
%%Value was:4.829561198498277
#pos(a39,
{},
{},
{goal(a).
initiate(rotate).
wall(b).}).
%%Value was:2.3188158591312584
#pos(a40,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).}).
%%Value was:2.100738468036431
#pos(a41,
{},
{},
{goal(a).
initiate(observe).
wall(b).}).
%%Value was:1.8449022030744382
#pos(a42,
{},
{},
{goal(a).
initiate(drop(b)).
wall(c).}).
%%Value was:0.5791841855040192
#pos(a43,
{},
{},
{initiate(explore(a)).
lava.
occludes_goal(a).
occluding_goal(a,b).
wall(a).}).
%%Value was:0.18573899190343673
#pos(a44,
{},
{},
{initiate(drop(a)).
lava.
occludes_goal(b).
occluding_goal(b,c).
wall(b).}).
%%Value was:-0.0029830162887136604
#pos(a45,
{},
{},
{initiate(rotate).
lava.
occludes_goal(a).
occluding_goal(a,b).
wall(a).}).
%%Value was:-0.11356001849690309
#pos(a46,
{},
{},
{initiate(observe).
lava.
occludes_goal(a).
occluding_goal(a,b).
wall(a).}).
%%Value was:-0.371719872067583
#pos(a47,
{},
{},
{initiate(drop(a)).
lava.
on(agent,platform).
platform.}).
%%Value was:0.4256005848414721
#pos(a48,
{},
{},
{initiate(observe).
lava.
on(agent,platform).
platform.}).
%%Value was:0.30241619212946247
#pos(a49,
{},
{},
{initiate(rotate).
lava.
on(agent,platform).
platform.}).
%%Value was:-0.15773812640145454
#pos(a50,
{},
{},
{goal1.
initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:0.6635711026182491
#pos(a51,
{},
{},
{goal1.
initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:-0.48311372514159534
#pos(a52,
{},
{},
{goal1.
initiate(observe).
on(agent,platform).
platform.}).
%%Value was:-1.5133995606509776
#pos(a53,
{},
{},
{goal1.
initiate(collect).
on(agent,platform).
platform.}).
%%Value was:-3.047724700854701
#pos(a54,
{},
{},
{goal(a).
initiate(climb).
platform.
ramp.}).
%%Value was:0.6352706943263555
#pos(a55,
{},
{},
{goal(a).
initiate(observe).
platform.
ramp.}).
%%Value was:-0.02935361586770828
#pos(a56,
{},
{},
{goal(a).
initiate(drop(b)).
platform.
ramp.}).
%%Value was:-0.03177022498572148
#pos(a57,
{},
{},
{goal(a).
initiate(rotate).
platform.
ramp.}).
%%Value was:-0.08766199088626657
#pos(a58,
{},
{},
{goal(a).
initiate(balance(a)).
platform.
ramp.}).
%%Value was:-0.20263844856061947
#pos(a59,
{},
{},
{goal(a).
initiate(interact(a)).
platform.
ramp.}).
%%Value was:-0.28035628569303145
#pos(a60,
{},
{},
{goal(a).
initiate(observe).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:1.1007457928233457
#pos(a61,
{},
{},
{goal(a).
initiate(balance(a)).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.32872391401685425
#pos(a62,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.2592023953989085
#pos(a63,
{},
{},
{goal(a).
initiate(rotate).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.053558046187230056
#pos(a64,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
moving.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.11193756761434943
#pos(a65,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.5476504178224653
#pos(a66,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
moving.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.5910548232989912
#pos(a67,
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
#pos(a68,
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
#pos(a69,
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
#pos(a70,
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
#pos(a71,
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
#pos(a72,
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
#pos(a73,
{},
{},
{goal(a).
initiate(balance(a)).
on(agent,platform).
platform.
ramp.}).
%%Value was:0.7819247603940421
#pos(a74,
{},
{},
{goal(a).
initiate(rotate).
on(agent,platform).
platform.
ramp.}).
%%Value was:0.5380152701796288
#pos(a75,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.34731411981027144
#pos(a76,
{},
{},
{goal(a).
initiate(observe).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.37702969649398227
#pos(a77,
{},
{},
{goal(a).
initiate(climb).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.398831696832946
#pos(a78,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,platform).
platform.
ramp.}).
%%Value was:-0.44500915750915765
#pos(a79,
{},
{},
{initiate(rotate).
on(agent,platform).
platform.}).
%%Value was:1.5159726111246543
#pos(a80,
{},
{},
{initiate(observe).
on(agent,platform).
platform.}).
%%Value was:0.42242342604781014
#pos(a81,
{},
{},
{initiate(drop(a)).
on(agent,platform).
platform.}).
%%Value was:0.34954905866129654
#pos(a82,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).}).
%%Value was:3.895549318364074
#pos(a83,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).}).
%%Value was:1.0054247421139535
#pos(a84,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).}).
%%Value was:-1.0693225098689219
#pos(a85,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(observe).}).
%%Value was:-1.2138502101142055
#pos(a86,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-5.813953488372094
#pos(a87,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:2.280241075030566
#pos(a88,
{},
{},
{goal1.
initiate(rotate).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-0.26393541062684683
#pos(a89,
{},
{},
{goal1.
initiate(drop(a)).
more_goals(b).
on(agent,platform).
platform.}).
%%Value was:-0.8808828641696899
#pos(a90,
{},
{},
{goal1.
initiate(observe).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-1.040628613775627
#pos(a91,
{},
{},
{goal1.
initiate(collect).
more_goals(a).
on(agent,platform).
platform.}).
%%Value was:-1.7231091498338087
#pos(a92,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).
wall(c).}).
%%Value was:8.448566178141329
#pos(a93,
{},
{},
{goal(a).
initiate(explore(b)).
wall(c).
wall(b).}).
%%Value was:3.782087430962338
#pos(a94,
{},
{},
{goal(a).
initiate(rotate).
wall(b).
wall(c).}).
%%Value was:3.081906240674338
#pos(a95,
{},
{},
{goal(a).
initiate(drop(b)).
wall(c).
wall(d).}).
%%Value was:2.418231579149442
#pos(a96,
{},
{},
{goal(a).
initiate(explore(b)).
wall(b).
wall(c).}).
%%Value was:2.087977112945431
#pos(a97,
{},
{},
{goal(a).
initiate(observe).
wall(b).
wall(c).}).
%%Value was:1.7511742064731763
#pos(a98,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).}).
%%Value was:5.185340156603163
#pos(a99,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
wall(c).}).
%%Value was:3.6436594577636208
#pos(a100,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).}).
%%Value was:2.0990040471748466
#pos(a101,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).}).
%%Value was:1.655298113796779
#pos(a102,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
wall(b).}).
%%Value was:1.4744021166430707
#pos(a103,
{},
{},
{goal(a).
initiate(observe).
lava.
wall(b).}).
%%Value was:1.1452739699764725
#pos(a104,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.}).
%%Value was:4.670096438491734
#pos(a105,
{},
{},
{goal(a).
initiate(rotate).
lava.}).
%%Value was:-0.03392729102589504
#pos(a106,
{},
{},
{goal(a).
initiate(observe).
lava.}).
%%Value was:-0.29916178158841616
#pos(a107,
{},
{},
{goal(a).
initiate(drop(b)).
lava.}).
%%Value was:-0.838335724686117
#pos(a108,
{},
{},
{goal(a).
initiate(interact(a)).
lava.}).
%%Value was:-2.66767197676617
#pos(a109,
{},
{},
{goal1.
initiate(collect).
platform.}).
%%Value was:1.216621205497167
#pos(a110,
{},
{},
{goal1.
initiate(drop(a)).
platform.}).
%%Value was:-0.4756594159974518
#pos(a111,
{},
{},
{goal1.
initiate(observe).
platform.}).
%%Value was:-0.7553978631169007
#pos(a112,
{},
{},
{goal1.
initiate(rotate).
platform.}).
%%Value was:-0.8537238128377964
#pos(a113,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
wall(b).
wall(c).}).
%%Value was:3.118159509202454
#pos(a114,
{},
{},
{goal(a).
initiate(observe).
lava.
wall(b).
wall(c).}).
%%Value was:2.4849478527607363
#pos(a115,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
wall(c).
wall(d).}).
%%Value was:2.323136996034157
#pos(a116,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(c).
wall(b).}).
%%Value was:1.3645269938650308
#pos(a117,
{},
{},
{goal(a).
initiate(rotate).
lava.
wall(b).
wall(c).}).
%%Value was:-0.6443972392638038
#pos(a118,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
wall(b).
wall(c).}).
%%Value was:-0.7955521472392638
#pos(a119,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
wall(b).
wall(c).}).
%%Value was:-1.0224948875255624
#pos(a120,
{},
{},
{goal(a).
initiate(observe).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:1.2141998126681708
#pos(a121,
{},
{},
{goal(a).
initiate(explore(b)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:0.08357120622039259
#pos(a122,
{},
{},
{goal(a).
initiate(balance(a)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.08946208389525184
#pos(a123,
{},
{},
{goal(a).
initiate(drop(b)).
lava.
on(agent,platform).
platform.
wall(c).}).
%%Value was:-0.12194449619127205
#pos(a124,
{},
{},
{goal(a).
initiate(interact(a)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.14429480836597075
#pos(a125,
{},
{},
{goal(a).
initiate(rotate).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.16931127327189335
#pos(a126,
{},
{},
{goal(a).
initiate(avoid(a)).
lava.
on(agent,platform).
platform.
wall(b).}).
%%Value was:-0.5003486137981917
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a4, a5).
#brave_ordering(b4@10, a4, a6).
#brave_ordering(b5@10, a4, a7).
#brave_ordering(b6@10, a4, a8).
#brave_ordering(b7@10, a4, a9).
#brave_ordering(b8@10, a10, a11).
#brave_ordering(b9@10, a10, a12).
#brave_ordering(b10@10, a10, a13).
#brave_ordering(b11@10, a14, a15).
#brave_ordering(b12@10, a14, a16).
#brave_ordering(b13@10, a17, a18).
#brave_ordering(b14@10, a17, a19).
#brave_ordering(b15@10, a17, a20).
#brave_ordering(b16@10, a17, a21).
#brave_ordering(b17@10, a17, a22).
#brave_ordering(b18@10, a23, a24).
#brave_ordering(b19@10, a23, a25).
#brave_ordering(b20@10, a23, a26).
#brave_ordering(b21@10, a27, a28).
#brave_ordering(b22@10, a27, a29).
#brave_ordering(b23@10, a27, a30).
#brave_ordering(b24@10, a31, a32).
#brave_ordering(b25@10, a33, a34).
#brave_ordering(b26@10, a33, a35).
#brave_ordering(b27@10, a33, a36).
#brave_ordering(b28@10, a33, a37).
#brave_ordering(b29@10, a38, a39).
#brave_ordering(b30@10, a38, a40).
#brave_ordering(b31@10, a38, a41).
#brave_ordering(b32@10, a38, a42).
#brave_ordering(b33@10, a43, a44).
#brave_ordering(b34@10, a43, a45).
#brave_ordering(b35@10, a43, a46).
#brave_ordering(b36@10, a47, a48).
#brave_ordering(b37@10, a47, a49).
#brave_ordering(b38@10, a50, a51).
#brave_ordering(b39@10, a50, a52).
#brave_ordering(b40@10, a50, a53).
#brave_ordering(b41@10, a54, a55).
#brave_ordering(b42@10, a54, a56).
#brave_ordering(b43@10, a54, a57).
#brave_ordering(b44@10, a54, a58).
#brave_ordering(b45@10, a54, a59).
#brave_ordering(b46@10, a60, a61).
#brave_ordering(b47@10, a60, a62).
#brave_ordering(b48@10, a60, a63).
#brave_ordering(b49@10, a60, a64).
#brave_ordering(b50@10, a60, a65).
#brave_ordering(b51@10, a60, a66).
#brave_ordering(b52@10, a67, a68).
#brave_ordering(b53@10, a67, a69).
#brave_ordering(b54@10, a67, a70).
#brave_ordering(b55@10, a67, a71).
#brave_ordering(b56@10, a67, a72).
#brave_ordering(b57@10, a73, a74).
#brave_ordering(b58@10, a73, a75).
#brave_ordering(b59@10, a73, a76).
#brave_ordering(b60@10, a73, a77).
#brave_ordering(b61@10, a73, a78).
#brave_ordering(b62@10, a79, a80).
#brave_ordering(b63@10, a79, a81).
#brave_ordering(b64@10, a82, a83).
#brave_ordering(b65@10, a82, a84).
#brave_ordering(b66@10, a82, a85).
#brave_ordering(b67@10, a82, a86).
#brave_ordering(b68@10, a87, a88).
#brave_ordering(b69@10, a87, a89).
#brave_ordering(b70@10, a87, a90).
#brave_ordering(b71@10, a87, a91).
#brave_ordering(b72@10, a92, a93).
#brave_ordering(b73@10, a92, a94).
#brave_ordering(b74@10, a92, a95).
#brave_ordering(b75@10, a92, a96).
#brave_ordering(b76@10, a92, a97).
#brave_ordering(b77@10, a98, a99).
#brave_ordering(b78@10, a98, a100).
#brave_ordering(b79@10, a98, a101).
#brave_ordering(b80@10, a98, a102).
#brave_ordering(b81@10, a98, a103).
#brave_ordering(b82@10, a104, a105).
#brave_ordering(b83@10, a104, a106).
#brave_ordering(b84@10, a104, a107).
#brave_ordering(b85@10, a104, a108).
#brave_ordering(b86@10, a109, a110).
#brave_ordering(b87@10, a109, a111).
#brave_ordering(b88@10, a109, a112).
#brave_ordering(b89@10, a113, a114).
#brave_ordering(b90@10, a113, a115).
#brave_ordering(b91@10, a113, a116).
#brave_ordering(b92@10, a113, a117).
#brave_ordering(b93@10, a113, a118).
#brave_ordering(b94@10, a113, a119).
#brave_ordering(b95@10, a120, a121).
#brave_ordering(b96@10, a120, a122).
#brave_ordering(b97@10, a120, a123).
#brave_ordering(b98@10, a120, a124).
#brave_ordering(b99@10, a120, a125).
#brave_ordering(b100@10, a120, a126).
