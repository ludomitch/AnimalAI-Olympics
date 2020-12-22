#modeo(1, initiate(rotate), (positive)).
#modeo(1, initiate(observe), (positive)).
#modeo(1, initiate(interact(var(x))), (positive)).
#modeo(1, initiate(collect(var(x))), (positive)).
#modeo(1, initiate(explore(var(x),var(y))), (positive)).
#modeo(1, initiate(climb(var(x))), (positive)).
#modeo(1, initiate(balance(var(x),var(y))), (positive)).
#modeo(1, initiate(avoid(var(x),var(y))), (positive)).
#modeo(1, initiate(drop(var(x))), (positive)).
#modeo(1, on(agent, var(x)), (positive)).
#modeo(1, occludes(var(x),var(y)), (positive)).
#modeo(1, occludes_more(var(x),var(y)), (positive)).
#modeo(1, bigger(var(x),var(y)), (positive)).
#modeo(1, more_goals(var(x)), (positive)).
#modeo(1, moving, (positive)).
#modeo(1, wall, (positive)).
#modeo(1, platform, (positive)).
#modeo(1, goal, (positive)).
#modeo(1, lava, (positive)).
#modeo(1, ramp, (positive)).
#modeo(1, goal1, (positive)).

#weight(-1).
#maxv(4).
#maxp(9).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{goal(a).
initiate(observe).
lava(b).
lava(c).
moving.
on(agent,d).
platform(d).
wall(e).}).
%%Value was:1.8919524193548374
#pos(a1,
{},
{},
{goal(a).
initiate(balance(b,a)).
lava(c).
lava(d).
moving.
on(agent,b).
platform(b).
wall(e).}).
%%Value was:-3.501805263157896
#pos(a2,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).
lava(c).
moving.
on(agent,d).
platform(d).
wall(e).}).
%%Value was:-4.430733333333334
#pos(a3,
{},
{},
{goal(a).
initiate(rotate).
lava(b).
lava(c).
moving.
on(agent,d).
platform(d).
wall(e).}).
%%Value was:-4.725960576923075
#pos(a4,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(c).
lava(d).
moving.
on(agent,e).
platform(e).
wall(b).}).
%%Value was:-4.841353125
#pos(a5,
{},
{},
{goal(a).
initiate(drop(b)).
lava(c).
lava(d).
moving.
on(agent,e).
platform(e).
wall(f).}).
%%Value was:-6.188019827586204
#pos(a6,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(c).
lava(b).
moving.
on(agent,d).
platform(d).
wall(e).}).
%%Value was:-6.6310407079646
#pos(a7,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(b).
lava(c).
moving.
on(agent,d).
platform(d).
wall(e).}).
%%Value was:-6.751073394495412
#pos(a8,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(c).
lava(d).
occludes(b,a).
on(agent,e).
platform(e).
wall(b).}).
%%Value was:47.01169565217391
#pos(a9,
{},
{},
{goal(a).
initiate(observe).
lava(b).
lava(c).
occludes(d,a).
on(agent,e).
platform(e).
wall(d).}).
%%Value was:14.990142857142855
#pos(a10,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).
lava(c).
occludes(d,a).
on(agent,e).
platform(e).
wall(d).}).
%%Value was:2.178400000000001
#pos(a11,
{},
{},
{goal(a).
initiate(rotate).
lava(b).
lava(c).
occludes(d,a).
on(agent,e).
platform(e).
wall(d).}).
%%Value was:1.4906842105263143
#pos(a12,
{},
{},
{goal(a).
initiate(drop(b)).
lava(c).
lava(d).
occludes(e,a).
on(agent,f).
platform(f).
wall(e).}).
%%Value was:-7.492578947368419
#pos(a13,
{},
{},
{goal(a).
initiate(balance(b,a)).
lava(c).
lava(d).
occludes(e,a).
on(agent,b).
platform(b).
wall(e).}).
%%Value was:-7.932791666666668
#pos(a14,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(b).
lava(c).
occludes(d,a).
on(agent,e).
platform(e).
wall(d).}).
%%Value was:-8.099545454545456
#pos(a15,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(c).
lava(b).
occludes(d,a).
on(agent,e).
platform(e).
wall(d).}).
%%Value was:-8.680571428571428
#pos(a16,
{},
{},
{goal(a).
initiate(balance(b,a)).
on(agent,b).
platform(b).}).
%%Value was:27.821882951653944
#pos(a17,
{},
{},
{goal(a).
initiate(drop(b)).
on(agent,c).
platform(c).}).
%%Value was:7.173
#pos(a18,
{},
{},
{goal(a).
initiate(rotate).
on(agent,b).
platform(b).}).
%%Value was:2.2551995249406174
#pos(a19,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,b).
platform(b).}).
%%Value was:-8.236673819742489
#pos(a20,
{},
{},
{goal(a).
initiate(observe).
on(agent,b).
platform(b).}).
%%Value was:-8.55
#pos(a21,
{},
{},
{goal(a).
initiate(climb(b)).
platform(c).
ramp(b).}).
%%Value was:6.646798029556686
#pos(a22,
{},
{},
{goal(a).
initiate(balance(b,a)).
platform(b).
ramp(c).}).
%%Value was:-7.7440860215053515
#pos(a23,
{},
{},
{goal(a).
initiate(rotate).
platform(b).
ramp(c).}).
%%Value was:-8.316753926701567
#pos(a24,
{},
{},
{goal(a).
initiate(interact(a)).
platform(b).
ramp(c).}).
%%Value was:-8.774542429284537
#pos(a25,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(b).
wall(c).
wall(d).}).
%%Value was:53.333333333333336
#pos(a26,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).
wall(c).
wall(d).}).
%%Value was:42.5
#pos(a27,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(c).
wall(d).
wall(b).}).
%%Value was:25.36
#pos(a28,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(c).
wall(b).
wall(d).}).
%%Value was:-8.8
#pos(a29,
{},
{},
{goal(a).
initiate(rotate).
lava(b).
wall(c).
wall(d).}).
%%Value was:-9.333333333333334
#pos(a30,
{},
{},
{goal(a).
initiate(observe).
lava(b).
wall(c).
wall(d).}).
%%Value was:-9.333333333333334
#pos(a31,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(collect).
more_goals(d).}).
%%Value was:200.0
#pos(a32,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(rotate).
more_goals(d).}).
%%Value was:26.82943591909091
#pos(a33,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(interact(a)).
more_goals(d).}).
%%Value was:-8.627142857142857
#pos(a34,
{},
{},
{goal(a).
initiate(balance(b,a)).
on(agent,b).
platform(b).
ramp(c).}).
%%Value was:74.0
#pos(a35,
{},
{},
{goal(a).
initiate(climb(b)).
on(agent,c).
platform(c).
ramp(b).}).
%%Value was:-10.0
#pos(a36,
{},
{},
{goal(a).
initiate(interact(a)).
on(agent,b).
platform(b).
ramp(c).}).
%%Value was:-10.0
#pos(a37,
{},
{},
{goal(a).
initiate(rotate).
on(agent,b).
platform(b).
ramp(c).}).
%%Value was:-10.0
#pos(a38,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).
wall(c).}).
%%Value was:161.9090909090909
#pos(a39,
{},
{},
{goal(a).
initiate(explore(b,a)).
wall(b).
wall(c).}).
%%Value was:20.06083333333334
#pos(a40,
{},
{},
{goal(a).
initiate(explore(b,a)).
wall(c).
wall(b).}).
%%Value was:15.40125
#pos(a41,
{},
{},
{goal(a).
initiate(observe).
wall(b).
wall(c).}).
%%Value was:-8.49625
#pos(a42,
{},
{},
{goal(a).
initiate(rotate).
wall(b).
wall(c).}).
%%Value was:-8.6725
#pos(a43,
{},
{},
{goal(a).
initiate(explore(b,a)).
occludes(b,a).
wall(b).}).
%%Value was:9.587171428571434
#pos(a44,
{},
{},
{goal(a).
initiate(rotate).
occludes(b,a).
wall(b).}).
%%Value was:-1.9806325301204777
#pos(a45,
{},
{},
{goal(a).
initiate(interact(a)).
occludes(b,a).
wall(b).}).
%%Value was:-4.22481927710843
#pos(a46,
{},
{},
{goal(a).
initiate(observe).
occludes(b,a).
wall(b).}).
%%Value was:-8.302105263157896
#pos(a47,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(collect).
more_goals(d).
platform(e).}).
%%Value was:165.0
#pos(a48,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(rotate).
more_goals(d).
platform(e).}).
%%Value was:32.3802621
#pos(a49,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(interact(a)).
more_goals(d).
platform(e).}).
%%Value was:-9.161249999999999
#pos(a50,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(balance(d,a)).
more_goals(e).
platform(d).}).
%%Value was:-9.327142857142857
#pos(a51,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:8.462891504605885
#pos(a52,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:2.8653617634635697
#pos(a53,
{},
{},
{goal(a).
initiate(observe).}).
%%Value was:-6.483941348973584
#pos(a54,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(a)).}).
%%Value was:200.0
#pos(a55,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(rotate).}).
%%Value was:-10.0
#pos(a56,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(drop(c)).}).
%%Value was:-10.0
#pos(a57,
{},
{},
{bigger(a,b).
goal(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a58,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).
lava(c).}).
%%Value was:200.0
#pos(a59,
{},
{},
{goal(a).
initiate(rotate).
lava(b).
lava(c).}).
%%Value was:-10.0
#pos(a60,
{},
{},
{goal(a).
initiate(explore(b,a)).
occludes(c,a).
occludes(b,a).
occludes_more(b,c).
on(agent,d).
platform(d).
wall(c).
wall(b).
wall(e).}).
%%Value was:92.80227272727286
#pos(a61,
{},
{},
{goal(a).
initiate(rotate).
occludes(b,a).
occludes(c,a).
occludes_more(c,b).
on(agent,d).
platform(d).
wall(b).
wall(c).
wall(e).}).
%%Value was:-3.3905362776025343
#pos(a62,
{},
{},
{goal(a).
initiate(explore(b,a)).
occludes(c,a).
occludes(d,a).
occludes_more(d,c).
on(agent,e).
platform(e).
wall(c).
wall(d).
wall(b).}).
%%Value was:-5.341522491349462
#pos(a63,
{},
{},
{goal(a).
initiate(explore(b,a)).
occludes(b,a).
occludes(c,a).
occludes_more(c,b).
on(agent,d).
platform(d).
wall(b).
wall(c).
wall(e).}).
%%Value was:-8.488817891373772
#pos(a64,
{},
{},
{goal(a).
initiate(balance(b,a)).
occludes(c,a).
occludes(d,a).
occludes_more(d,c).
on(agent,b).
platform(b).
wall(c).
wall(d).
wall(e).}).
%%Value was:-8.49712460063895
#pos(a65,
{},
{},
{goal(a).
initiate(interact(a)).
occludes(b,a).
occludes(c,a).
occludes_more(c,b).
on(agent,d).
platform(d).
wall(b).
wall(c).
wall(e).}).
%%Value was:-8.719838056680151
#pos(a66,
{},
{},
{goal(a).
initiate(interact(a)).
wall(b).}).
%%Value was:195.91439688715954
#pos(a67,
{},
{},
{goal(a).
initiate(explore(b,a)).
wall(b).}).
%%Value was:39.56703883495146
#pos(a68,
{},
{},
{goal(a).
initiate(rotate).
wall(b).}).
%%Value was:32.77902654867257
#pos(a69,
{},
{},
{goal(a).
initiate(observe).
wall(b).}).
%%Value was:-9.033333333333333
#pos(a70,
{},
{},
{goal(a).
initiate(observe).
lava(b).
lava(c).
on(agent,d).
platform(d).
wall(e).}).
%%Value was:3.3159374999999978
#pos(a71,
{},
{},
{goal(a).
initiate(rotate).
lava(b).
lava(c).
on(agent,d).
platform(d).
wall(e).}).
%%Value was:-6.74325
#pos(a72,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(c).
lava(d).
on(agent,e).
platform(e).
wall(b).}).
%%Value was:-6.989142857142857
#pos(a73,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(c).
lava(b).
on(agent,d).
platform(d).
wall(e).}).
%%Value was:-7.142823529411766
#pos(a74,
{},
{},
{goal(a).
initiate(drop(b)).
lava(c).
lava(d).
on(agent,e).
platform(e).
wall(f).}).
%%Value was:-7.2244285714285725
#pos(a75,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).
lava(c).
on(agent,d).
platform(d).
wall(e).}).
%%Value was:-7.2756
#pos(a76,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(b).
lava(c).
on(agent,d).
platform(d).
wall(e).}).
%%Value was:-7.356315789473686
#pos(a77,
{},
{},
{goal(a).
initiate(balance(b,a)).
lava(c).
lava(d).
on(agent,b).
platform(b).
wall(e).}).
%%Value was:-7.7136000000000005
#pos(a78,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(drop(e)).
more_goals(e).
on(agent,f).
platform(f).}).
%%Value was:78.54858627139286
#pos(a79,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(collect).
more_goals(e).
on(agent,f).
platform(f).}).
%%Value was:70.0
#pos(a80,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(balance(e,a)).
more_goals(f).
on(agent,e).
platform(e).}).
%%Value was:41.95617599999999
#pos(a81,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(rotate).
more_goals(e).
on(agent,f).
platform(f).}).
%%Value was:14.118892758620687
#pos(a82,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(interact(a)).
more_goals(e).
on(agent,f).
platform(f).}).
%%Value was:0.10965789473684191
#pos(a83,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(drop(e)).
more_goals(f).
on(agent,g).
platform(g).}).
%%Value was:-8.005526427272727
#pos(a84,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(a).
wall(b).}).
%%Value was:37.666666666666664
#pos(a85,
{},
{},
{goal(a).
initiate(rotate).
lava(a).
wall(b).}).
%%Value was:17.62461538461538
#pos(a86,
{},
{},
{goal(a).
initiate(observe).
lava(a).
wall(b).}).
%%Value was:1.2087499999999993
#pos(a87,
{},
{},
{goal(a).
initiate(avoid(a,a)).
lava(a).
wall(b).}).
%%Value was:-8.893333333333333
#pos(a88,
{},
{},
{goal(a).
initiate(interact(a)).
lava(a).
wall(b).}).
%%Value was:-9.127272727272727
#pos(a89,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(drop(d)).
more_goals(d).
on(agent,e).
platform(e).}).
%%Value was:108.8565
#pos(a90,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(drop(d)).
more_goals(e).
on(agent,f).
platform(f).}).
%%Value was:-7.330500000000001
#pos(a91,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(balance(d,a)).
more_goals(e).
on(agent,d).
platform(d).}).
%%Value was:-7.6305000000000005
#pos(a92,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(rotate).
more_goals(d).
on(agent,e).
platform(e).}).
%%Value was:-7.824985714285715
#pos(a93,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(interact(a)).
more_goals(d).
on(agent,e).
platform(e).}).
%%Value was:-8.64
#pos(a94,
{},
{},
{goal(a).
goal1(b).
goal1(c).
initiate(collect).
more_goals(d).
on(agent,e).
platform(e).}).
%%Value was:-10.0
#pos(a95,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(b).}).
%%Value was:162.2163225806452
#pos(a96,
{},
{},
{goal(a).
initiate(rotate).
lava(b).}).
%%Value was:40.64717105263156
#pos(a97,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).}).
%%Value was:-7.3140963855421655
#pos(a98,
{},
{},
{goal(a).
initiate(observe).
lava(b).}).
%%Value was:-8.416153846153845
#pos(a99,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(collect).
more_goals(e).
platform(f).}).
%%Value was:176.66666666666666
#pos(a100,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(rotate).
more_goals(e).
platform(f).}).
%%Value was:23.681700000000003
#pos(a101,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(balance(e,a)).
more_goals(f).
platform(e).}).
%%Value was:12.188888888888888
#pos(a102,
{},
{},
{goal(a).
goal1(b).
goal1(c).
goal1(d).
initiate(interact(a)).
more_goals(e).
platform(f).}).
%%Value was:-8.362583333333333
#pos(a103,
{},
{},
{goal(a).
initiate(balance(b,a)).
lava(c).
lava(d).
lava(e).
on(agent,b).
platform(b).
wall(f).}).
%%Value was:10.196999999999996
#pos(a104,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(c).
lava(d).
lava(e).
on(agent,f).
platform(f).
wall(b).}).
%%Value was:-6.561
#pos(a105,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).
lava(c).
lava(d).
on(agent,e).
platform(e).
wall(f).}).
%%Value was:-6.561
#pos(a106,
{},
{},
{goal(a).
initiate(rotate).
lava(b).
lava(c).
lava(d).
on(agent,e).
platform(e).
wall(f).}).
%%Value was:-6.6419999999999995
#pos(a107,
{},
{},
{goal(a).
initiate(observe).
lava(b).
lava(c).
lava(d).
on(agent,e).
platform(e).
wall(f).}).
%%Value was:-6.652125
#pos(a108,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(c).
lava(d).
lava(b).
on(agent,e).
platform(e).
wall(f).}).
%%Value was:-6.665142857142857
#pos(a109,
{},
{},
{goal(a).
initiate(drop(b)).
lava(c).
lava(d).
lava(e).
on(agent,f).
platform(f).
wall(g).}).
%%Value was:-6.720206896551728
#pos(a110,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(b).
lava(c).
lava(d).
on(agent,e).
platform(e).
wall(f).}).
%%Value was:-6.735461538461539
#pos(a111,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(c).
lava(b).
lava(d).
on(agent,e).
platform(e).
wall(f).}).
%%Value was:-6.985384615384618
#pos(a112,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(c).
occludes(b,a).
on(agent,d).
platform(d).
wall(b).}).
%%Value was:36.74125
#pos(a113,
{},
{},
{goal(a).
initiate(drop(b)).
lava(c).
occludes(d,a).
on(agent,e).
platform(e).
wall(d).}).
%%Value was:-7.792857142857144
#pos(a114,
{},
{},
{goal(a).
initiate(observe).
lava(b).
occludes(c,a).
on(agent,d).
platform(d).
wall(c).}).
%%Value was:-8.1225
#pos(a115,
{},
{},
{goal(a).
initiate(rotate).
lava(b).
occludes(c,a).
on(agent,d).
platform(d).
wall(c).}).
%%Value was:-8.13
#pos(a116,
{},
{},
{goal(a).
initiate(balance(b,a)).
lava(c).
occludes(d,a).
on(agent,b).
platform(b).
wall(d).}).
%%Value was:-8.295714285714286
#pos(a117,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).
occludes(c,a).
on(agent,d).
platform(d).
wall(c).}).
%%Value was:-8.763333333333334
#pos(a118,
{},
{},
{goal(a).
initiate(avoid(b,a)).
lava(b).
occludes(c,a).
on(agent,d).
platform(d).
wall(c).}).
%%Value was:-9.175555555555555
#pos(a119,
{},
{},
{goal(a).
initiate(interact(a)).
lava(b).
wall(c).}).
%%Value was:60.0
#pos(a120,
{},
{},
{goal(a).
initiate(observe).
lava(b).
wall(c).}).
%%Value was:-9.0
#pos(a121,
{},
{},
{goal(a).
initiate(explore(b,a)).
lava(c).
wall(b).}).
%%Value was:-9.05
#pos(a122,
{},
{},
{goal(a).
goal1(b).
initiate(collect).
platform(c).}).
%%Value was:42.5
#pos(a123,
{},
{},
{goal(a).
goal1(b).
initiate(rotate).
platform(c).}).
%%Value was:-7.157205
#pos(a124,
{},
{},
{goal(a).
goal1(b).
initiate(interact(a)).
platform(c).}).
%%Value was:-8.726225
#pos(a125,
{},
{},
{goal(a).
goal1(b).
initiate(balance(c,a)).
platform(c).}).
%%Value was:-9.666666666666666
#pos(a126,
{},
{},
{goal(a).
goal1(b).
initiate(rotate).}).
%%Value was:2.6352794999999993
#pos(a127,
{},
{},
{goal(a).
goal1(b).
initiate(collect).}).
%%Value was:-1.6
#pos(a128,
{},
{},
{goal(a).
goal1(b).
initiate(interact(a)).}).
%%Value was:-9.245315789473684
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
#brave_ordering(b14@10, a16, a17).
#brave_ordering(b15@10, a16, a18).
#brave_ordering(b16@10, a16, a19).
#brave_ordering(b17@10, a16, a20).
#brave_ordering(b18@10, a21, a22).
#brave_ordering(b19@10, a21, a23).
#brave_ordering(b20@10, a21, a24).
#brave_ordering(b21@10, a25, a26).
#brave_ordering(b22@10, a25, a27).
#brave_ordering(b23@10, a25, a28).
#brave_ordering(b24@10, a25, a29).
#brave_ordering(b25@10, a25, a30).
#brave_ordering(b26@10, a31, a32).
#brave_ordering(b27@10, a31, a33).
#brave_ordering(b28@10, a34, a35).
#brave_ordering(b29@10, a34, a36).
#brave_ordering(b30@10, a34, a37).
#brave_ordering(b31@10, a38, a39).
#brave_ordering(b32@10, a38, a40).
#brave_ordering(b33@10, a38, a41).
#brave_ordering(b34@10, a38, a42).
#brave_ordering(b35@10, a43, a44).
#brave_ordering(b36@10, a43, a45).
#brave_ordering(b37@10, a43, a46).
#brave_ordering(b38@10, a47, a48).
#brave_ordering(b39@10, a47, a49).
#brave_ordering(b40@10, a47, a50).
#brave_ordering(b41@10, a51, a52).
#brave_ordering(b42@10, a51, a53).
#brave_ordering(b43@10, a54, a55).
#brave_ordering(b44@10, a54, a56).
#brave_ordering(b45@10, a54, a57).
#brave_ordering(b46@10, a58, a59).
#brave_ordering(b47@10, a60, a61).
#brave_ordering(b48@10, a60, a62).
#brave_ordering(b49@10, a60, a63).
#brave_ordering(b50@10, a60, a64).
#brave_ordering(b51@10, a60, a65).
#brave_ordering(b52@10, a66, a67).
#brave_ordering(b53@10, a66, a68).
#brave_ordering(b54@10, a66, a69).
#brave_ordering(b55@10, a70, a71).
#brave_ordering(b56@10, a70, a72).
#brave_ordering(b57@10, a70, a73).
#brave_ordering(b58@10, a70, a74).
#brave_ordering(b59@10, a70, a75).
#brave_ordering(b60@10, a70, a76).
#brave_ordering(b61@10, a70, a77).
#brave_ordering(b62@10, a78, a79).
#brave_ordering(b63@10, a78, a80).
#brave_ordering(b64@10, a78, a81).
#brave_ordering(b65@10, a78, a82).
#brave_ordering(b66@10, a78, a83).
#brave_ordering(b67@10, a84, a85).
#brave_ordering(b68@10, a84, a86).
#brave_ordering(b69@10, a84, a87).
#brave_ordering(b70@10, a84, a88).
#brave_ordering(b71@10, a89, a90).
#brave_ordering(b72@10, a89, a91).
#brave_ordering(b73@10, a89, a92).
#brave_ordering(b74@10, a89, a93).
#brave_ordering(b75@10, a89, a94).
#brave_ordering(b76@10, a95, a96).
#brave_ordering(b77@10, a95, a97).
#brave_ordering(b78@10, a95, a98).
#brave_ordering(b79@10, a99, a100).
#brave_ordering(b80@10, a99, a101).
#brave_ordering(b81@10, a99, a102).
#brave_ordering(b82@10, a103, a104).
#brave_ordering(b83@10, a103, a105).
#brave_ordering(b84@10, a103, a106).
#brave_ordering(b85@10, a103, a107).
#brave_ordering(b86@10, a103, a108).
#brave_ordering(b87@10, a103, a109).
#brave_ordering(b88@10, a103, a110).
#brave_ordering(b89@10, a103, a111).
#brave_ordering(b90@10, a112, a113).
#brave_ordering(b91@10, a112, a114).
#brave_ordering(b92@10, a112, a115).
#brave_ordering(b93@10, a112, a116).
#brave_ordering(b94@10, a112, a117).
#brave_ordering(b95@10, a112, a118).
#brave_ordering(b96@10, a119, a120).
#brave_ordering(b97@10, a119, a121).
#brave_ordering(b98@10, a122, a123).
#brave_ordering(b99@10, a122, a124).
#brave_ordering(b100@10, a122, a125).
#brave_ordering(b101@10, a126, a127).
#brave_ordering(b102@10, a126, a128).
