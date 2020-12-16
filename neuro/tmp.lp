
present(X):-goal(X).
present(X):- visible(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).
#modeo(1, initiate(rotate)).
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(explore(var(x),var(y)))).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, initiate(avoid(var(x),var(y)))).
#modeo(1, visible(var(x))).
#modeo(1, on(agent, var(x))).
#modeo(1, occludes(var(x),var(y))).
#modeo(1, goal(var(x))).
#modeo(1, wall(var(x))).
#modeo(1, platform(var(x))).
#modeo(1, lava(var(x))).
#modeo(1, ramp(var(x))).
#modeo(1, agent).

#weight(1).
#weight(-1).
#maxv(4).
#maxp(6).
#pos(a0,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:100.0
#pos(a1,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-10.0
#pos(a2,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a3,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a4,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a5,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a6,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a7,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a8,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a9,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-10.0
#pos(a10,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-10.0
#pos(a11,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.375
#pos(a12,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.529411764705882
#pos(a13,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.578947368421053
#pos(a14,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.615384615384615
#pos(a15,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.777777777777779
#pos(a16,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a17,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a18,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.375
#pos(a19,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-9.413793103448276
#pos(a20,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.48076923076923
#pos(a21,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.511627906976743
#pos(a22,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.513513513513514
#pos(a23,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.53125
#pos(a24,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.5625
#pos(a25,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.568181818181818
#pos(a26,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.595238095238095
#pos(a27,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.612903225806452
#pos(a28,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.727272727272727
#pos(a29,
{},
{},
{on(agent,b).
visible(b).
ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.5
#pos(a30,
{},
{},
{on(agent,b).
visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a31,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:90.28666666666666
#pos(a32,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(climb(a)).}).
%%Value was:83.97317073170731
#pos(a33,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:56.062063492063494
#pos(a34,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:21.94891304347826
#pos(a35,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:21.846393442622954
#pos(a36,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:21.843617021276597
#pos(a37,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:14.550208333333332
#pos(a38,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:10.457
#pos(a39,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:9.981914893617017
#pos(a40,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:2.928
#pos(a41,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:1.0981632653061237
#pos(a42,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-4.1572727272727334
#pos(a43,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-6.24827586206897
#pos(a44,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.8158878504673
#pos(a45,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.546846846846858
#pos(a46,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-7.552475247524762
#pos(a47,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-7.686486486486496
#pos(a48,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-7.740707964601779
#pos(a49,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.3877049180328
#pos(a50,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-8.412844036697258
#pos(a51,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.467826086956531
#pos(a52,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-8.504210526315799
#pos(a53,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-8.505607476635523
#pos(a54,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-8.523931623931633
#pos(a55,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-8.531200000000007
#pos(a56,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-8.55268817204302
#pos(a57,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-8.556790123456798
#pos(a58,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.594444444444452
#pos(a59,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.597468354430386
#pos(a60,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-8.597959183673478
#pos(a61,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-8.627027027027035
#pos(a62,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-8.693442622950824
#pos(a63,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.725000000000005
#pos(a64,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.86979166666667
#pos(a65,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-8.92105263157895
#pos(a66,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.943636363636367
#pos(a67,
{},
{},
{visible(b).
platform(b).
visible(c).
platform(c).
visible(d).
ramp(d).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-10.0
#pos(a68,
{},
{},
{visible(b).
platform(b).
visible(c).
platform(c).
visible(d).
ramp(d).
goal(a).
initiate(avoid(d,b)).}).
%%Value was:-10.0
#pos(a69,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
platform(c).
visible(d).
ramp(d).
goal(a).
initiate(climb(d)).}).
%%Value was:-9.0
#pos(a70,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
platform(c).
visible(d).
ramp(d).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a71,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
platform(c).
visible(d).
ramp(d).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-10.0
#pos(a72,
{},
{},
{on(agent,b).
visible(c).
platform(c).
visible(b).
ramp(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a73,
{},
{},
{on(agent,b).
visible(c).
platform(c).
visible(b).
ramp(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-10.0
#pos(a74,
{},
{},
{on(agent,b).
visible(c).
platform(c).
visible(b).
ramp(b).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-10.0
#pos(a75,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-10.0
#pos(a76,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a77,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a78,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-10.0
#pos(a79,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-10.0
#pos(a80,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-10.0
#pos(a81,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-10.0
#pos(a82,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-10.0
#pos(a83,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-10.0
#pos(a84,
{},
{},
{on(agent,b).
visible(a).
visible(c).
platform(c).
visible(b).
ramp(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a85,
{},
{},
{on(agent,b).
visible(a).
visible(c).
platform(c).
visible(b).
ramp(b).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-10.0
#pos(a86,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:43.0375
#pos(a87,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:16.13122950819673
#pos(a88,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:7.178959999999999
#pos(a89,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:6.126564885496181
#pos(a90,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:3.4091034482758555
#pos(a91,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-1.6140707964601777
#pos(a92,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-3.803970588235296
#pos(a93,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.0
#pos(a94,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a95,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.620689655172415
#pos(a96,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.65079365079365
#pos(a97,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.709090909090909
#pos(a98,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.714285714285714
#pos(a99,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.758620689655173
#pos(a100,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.8
#pos(a101,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.816326530612244
#pos(a102,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:30.375
#pos(a103,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.185185185185185
#pos(a104,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.235294117647058
#pos(a105,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.37037037037037
#pos(a106,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.409090909090908
#pos(a107,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.470588235294118
#pos(a108,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.583333333333334
#pos(a109,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a110,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a111,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:26.523809523809526
#pos(a112,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-1.6153846153846154
#pos(a113,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-4.608695652173913
#pos(a114,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-9.318181818181818
#pos(a115,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.428571428571429
#pos(a116,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.428571428571429
#pos(a117,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.473684210526315
#pos(a118,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.478260869565217
#pos(a119,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.555555555555555
#pos(a120,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.61111111111111
#pos(a121,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.61111111111111
#pos(a122,
{},
{},
{visible(a).
goal(a).
initiate(interact(a)).}).
%%Value was:37.142857142857146
#pos(a123,
{},
{},
{visible(a).
goal(a).
initiate(climb(a)).}).
%%Value was:35.49738219895288
#pos(a124,
{},
{},
{visible(a).
goal(a).
initiate(rotate).}).
%%Value was:19.601481481481486
#pos(a125,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
visible(d).
ramp(d).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a126,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
visible(d).
ramp(d).
goal(a).
initiate(explore(a,d)).}).
%%Value was:-10.0
#pos(a127,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
visible(d).
ramp(d).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-10.0
#pos(a128,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
visible(d).
ramp(d).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-10.0
#pos(a129,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-9.466666666666667
#pos(a130,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.535714285714286
#pos(a131,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-9.56
#pos(a132,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-9.563636363636364
#pos(a133,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-9.565217391304348
#pos(a134,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.604166666666666
#pos(a135,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-9.627450980392156
#pos(a136,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-9.630434782608695
#pos(a137,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-9.631578947368421
#pos(a138,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.63265306122449
#pos(a139,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.649122807017545
#pos(a140,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-9.65
#pos(a141,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-9.666666666666666
#pos(a142,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-9.696428571428571
#pos(a143,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-9.696428571428571
#pos(a144,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a145,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-10.0
#pos(a146,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a147,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:12.64434497816593
#pos(a148,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-1.6450951374207174
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a0, a6).
#brave_ordering(b6@10, a0, a7).
#brave_ordering(b7@10, a0, a8).
#brave_ordering(b8@10, a0, a9).
#brave_ordering(b9@10, a0, a10).
#brave_ordering(b10@10, a11, a12).
#brave_ordering(b11@10, a11, a13).
#brave_ordering(b12@10, a11, a14).
#brave_ordering(b13@10, a11, a15).
#brave_ordering(b14@10, a11, a16).
#brave_ordering(b15@10, a11, a17).
#brave_ordering(b16@10, a18, a19).
#brave_ordering(b17@10, a18, a20).
#brave_ordering(b18@10, a18, a21).
#brave_ordering(b19@10, a18, a22).
#brave_ordering(b20@10, a18, a23).
#brave_ordering(b21@10, a18, a24).
#brave_ordering(b22@10, a18, a25).
#brave_ordering(b23@10, a18, a26).
#brave_ordering(b24@10, a18, a27).
#brave_ordering(b25@10, a18, a28).
#brave_ordering(b26@10, a29, a30).
#brave_ordering(b27@10, a31, a32).
#brave_ordering(b28@10, a31, a33).
#brave_ordering(b29@10, a31, a34).
#brave_ordering(b30@10, a31, a35).
#brave_ordering(b31@10, a31, a36).
#brave_ordering(b32@10, a31, a37).
#brave_ordering(b33@10, a31, a38).
#brave_ordering(b34@10, a31, a39).
#brave_ordering(b35@10, a31, a40).
#brave_ordering(b36@10, a31, a41).
#brave_ordering(b37@10, a42, a43).
#brave_ordering(b38@10, a42, a44).
#brave_ordering(b39@10, a42, a45).
#brave_ordering(b40@10, a42, a46).
#brave_ordering(b41@10, a42, a47).
#brave_ordering(b42@10, a42, a48).
#brave_ordering(b43@10, a42, a49).
#brave_ordering(b44@10, a42, a50).
#brave_ordering(b45@10, a42, a51).
#brave_ordering(b46@10, a42, a52).
#brave_ordering(b47@10, a42, a53).
#brave_ordering(b48@10, a42, a54).
#brave_ordering(b49@10, a42, a55).
#brave_ordering(b50@10, a42, a56).
#brave_ordering(b51@10, a42, a57).
#brave_ordering(b52@10, a42, a58).
#brave_ordering(b53@10, a42, a59).
#brave_ordering(b54@10, a42, a60).
#brave_ordering(b55@10, a42, a61).
#brave_ordering(b56@10, a42, a62).
#brave_ordering(b57@10, a42, a63).
#brave_ordering(b58@10, a42, a64).
#brave_ordering(b59@10, a42, a65).
#brave_ordering(b60@10, a42, a66).
#brave_ordering(b61@10, a67, a68).
#brave_ordering(b62@10, a69, a70).
#brave_ordering(b63@10, a69, a71).
#brave_ordering(b64@10, a72, a73).
#brave_ordering(b65@10, a72, a74).
#brave_ordering(b66@10, a75, a76).
#brave_ordering(b67@10, a75, a77).
#brave_ordering(b68@10, a75, a78).
#brave_ordering(b69@10, a75, a79).
#brave_ordering(b70@10, a75, a80).
#brave_ordering(b71@10, a75, a81).
#brave_ordering(b72@10, a75, a82).
#brave_ordering(b73@10, a75, a83).
#brave_ordering(b74@10, a84, a85).
#brave_ordering(b75@10, a86, a87).
#brave_ordering(b76@10, a86, a88).
#brave_ordering(b77@10, a86, a89).
#brave_ordering(b78@10, a86, a90).
#brave_ordering(b79@10, a86, a91).
#brave_ordering(b80@10, a86, a92).
#brave_ordering(b81@10, a93, a94).
#brave_ordering(b82@10, a95, a96).
#brave_ordering(b83@10, a95, a97).
#brave_ordering(b84@10, a95, a98).
#brave_ordering(b85@10, a95, a99).
#brave_ordering(b86@10, a95, a100).
#brave_ordering(b87@10, a95, a101).
#brave_ordering(b88@10, a102, a103).
#brave_ordering(b89@10, a102, a104).
#brave_ordering(b90@10, a102, a105).
#brave_ordering(b91@10, a102, a106).
#brave_ordering(b92@10, a102, a107).
#brave_ordering(b93@10, a102, a108).
#brave_ordering(b94@10, a109, a110).
#brave_ordering(b95@10, a111, a112).
#brave_ordering(b96@10, a111, a113).
#brave_ordering(b97@10, a111, a114).
#brave_ordering(b98@10, a111, a115).
#brave_ordering(b99@10, a111, a116).
#brave_ordering(b100@10, a111, a117).
#brave_ordering(b101@10, a111, a118).
#brave_ordering(b102@10, a111, a119).
#brave_ordering(b103@10, a111, a120).
#brave_ordering(b104@10, a111, a121).
#brave_ordering(b105@10, a122, a123).
#brave_ordering(b106@10, a122, a124).
#brave_ordering(b107@10, a125, a126).
#brave_ordering(b108@10, a125, a127).
#brave_ordering(b109@10, a125, a128).
#brave_ordering(b110@10, a129, a130).
#brave_ordering(b111@10, a129, a131).
#brave_ordering(b112@10, a129, a132).
#brave_ordering(b113@10, a129, a133).
#brave_ordering(b114@10, a129, a134).
#brave_ordering(b115@10, a129, a135).
#brave_ordering(b116@10, a129, a136).
#brave_ordering(b117@10, a129, a137).
#brave_ordering(b118@10, a129, a138).
#brave_ordering(b119@10, a129, a139).
#brave_ordering(b120@10, a129, a140).
#brave_ordering(b121@10, a129, a141).
#brave_ordering(b122@10, a129, a142).
#brave_ordering(b123@10, a129, a143).
#brave_ordering(b124@10, a129, a144).
#brave_ordering(b125@10, a129, a145).
#brave_ordering(b126@10, a129, a146).
#brave_ordering(b127@10, a147, a148).
