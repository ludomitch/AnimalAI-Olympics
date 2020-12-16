
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
ramp(b).
goal(a).
initiate(avoid(a,a)).}).
%%Value was:-9.0
#pos(a1,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(balance(a,a)).}).
%%Value was:-9.0
#pos(a2,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.0
#pos(a3,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a4,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a5,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-10.0
#pos(a6,
{},
{},
{visible(a).
visible(b).
ramp(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-10.0
#pos(a7,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:31.678035714285727
#pos(a8,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:8.232803738317754
#pos(a9,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:6.226000000000001
#pos(a10,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:3.1333673469387753
#pos(a11,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:2.782454545454541
#pos(a12,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:0.8627868852459023
#pos(a13,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-1.3046534653465351
#pos(a14,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-2.0389999999999993
#pos(a15,
{},
{},
{visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-3.4907920792079215
#pos(a16,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-7.351851851851852
#pos(a17,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.85510204081633
#pos(a18,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-8.87924528301887
#pos(a19,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-8.939622641509438
#pos(a20,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.122580645161289
#pos(a21,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-9.185106382978725
#pos(a22,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-9.331578947368422
#pos(a23,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-9.35689655172414
#pos(a24,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.371428571428572
#pos(a25,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,c)).}).
%%Value was:-9.382142857142858
#pos(a26,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.410416666666668
#pos(a27,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-9.411111111111113
#pos(a28,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-9.458823529411765
#pos(a29,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-9.464062500000002
#pos(a30,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-9.488000000000001
#pos(a31,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,c)).}).
%%Value was:-9.503846153846155
#pos(a32,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-9.538461538461538
#pos(a33,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-9.554347826086957
#pos(a34,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-9.557777777777778
#pos(a35,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.948275862068966
#pos(a36,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-9.959183673469388
#pos(a37,
{},
{},
{visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a38,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:91.75
#pos(a39,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(climb(a)).}).
%%Value was:91.10810810810811
#pos(a40,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:57.46161290322582
#pos(a41,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:19.321142857142853
#pos(a42,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:17.103548387096776
#pos(a43,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:12.951714285714283
#pos(a44,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:10.775142857142853
#pos(a45,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(avoid(a,a)).}).
%%Value was:10.73742857142857
#pos(a46,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:10.359375
#pos(a47,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(rotate).}).
%%Value was:8.954883720930228
#pos(a48,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:4.768108108108109
#pos(a49,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:4.219354838709678
#pos(a50,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(balance(a,a)).}).
%%Value was:4.028333333333335
#pos(a51,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:4.010526315789474
#pos(a52,
{},
{},
{visible(a).
visible(b).
wall(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-2.9380645161290317
#pos(a53,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-9.0
#pos(a54,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-10.0
#pos(a55,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a56,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a57,
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
#pos(a58,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-10.0
#pos(a59,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-10.0
#pos(a60,
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
visible(e).
ramp(e).
goal(a).
initiate(explore(d,a)).}).
%%Value was:-9.0
#pos(a61,
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
visible(e).
ramp(e).
goal(a).
initiate(balance(a,e)).}).
%%Value was:-9.0
#pos(a62,
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
initiate(avoid(b,d)).}).
%%Value was:-10.0
#pos(a63,
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
initiate(avoid(a,c)).}).
%%Value was:-10.0
#pos(a64,
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
initiate(balance(c,c)).}).
%%Value was:-10.0
#pos(a65,
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
initiate(explore(c,b)).}).
%%Value was:-10.0
#pos(a66,
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
initiate(balance(d,a)).}).
%%Value was:-10.0
#pos(a67,
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
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a68,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
visible(d).
ramp(d).
visible(e).
ramp(e).
goal(a).
initiate(climb(d)).}).
%%Value was:-8.100000000000001
#pos(a69,
{},
{},
{on(agent,b).
visible(b).
platform(b).
visible(c).
ramp(c).
visible(d).
ramp(d).
visible(e).
ramp(e).
goal(a).
initiate(explore(d,e)).}).
%%Value was:-10.0
#pos(a70,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.040845070422538
#pos(a71,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.330952380952382
#pos(a72,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.438805970149255
#pos(a73,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-9.465432098765433
#pos(a74,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.529333333333334
#pos(a75,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.575384615384618
#pos(a76,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-9.58888888888889
#pos(a77,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.67361111111111
#pos(a78,
{},
{},
{visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.80769230769231
#pos(a79,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:23.68
#pos(a80,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-1.2999999999999992
#pos(a81,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-2.053333333333334
#pos(a82,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-5.199999999999999
#pos(a83,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.586666666666666
#pos(a84,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(a,a)).}).
%%Value was:-8.64
#pos(a85,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(a,a)).}).
%%Value was:-8.822222222222223
#pos(a86,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.84
#pos(a87,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-8.866666666666665
#pos(a88,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-8.873684210526315
#pos(a89,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.892307692307693
#pos(a90,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.015384615384615
#pos(a91,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.018749999999999
#pos(a92,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.273333333333333
#pos(a93,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.283333333333333
#pos(a94,
{},
{},
{on(agent,b).
visible(b).
ramp(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-8.55
#pos(a95,
{},
{},
{on(agent,b).
visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a96,
{},
{},
{on(agent,b).
visible(b).
ramp(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a97,
{},
{},
{on(agent,b).
visible(b).
ramp(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-10.0
#pos(a98,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:59.9
#pos(a99,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-8.389473684210525
#pos(a100,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.399999999999999
#pos(a101,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.628571428571428
#pos(a102,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.766666666666666
#pos(a103,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-8.805882352941175
#pos(a104,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-8.912500000000001
#pos(a105,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.01
#pos(a106,
{},
{},
{on(agent,b).
visible(b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.213333333333333
#pos(a107,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-8.100000000000001
#pos(a108,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-9.0
#pos(a109,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-9.0
#pos(a110,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-10.0
#pos(a111,
{},
{},
{on(agent,b).
visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a112,
{},
{},
{visible(a).
goal(a).
initiate(climb(a)).}).
%%Value was:46.25954198473283
#pos(a113,
{},
{},
{visible(a).
goal(a).
initiate(interact(a)).}).
%%Value was:42.932330827067666
#pos(a114,
{},
{},
{visible(a).
goal(a).
initiate(rotate).}).
%%Value was:19.795869565217412
#pos(a115,
{},
{},
{visible(a).
goal(a).
initiate(avoid(a,a)).}).
%%Value was:2.9165289256198332
#pos(a116,
{},
{},
{visible(a).
goal(a).
initiate(balance(a,a)).}).
%%Value was:-0.6937500000000002
#pos(a117,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.928571428571432
#pos(a118,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.013333333333337
#pos(a119,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.015094339622644
#pos(a120,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.093939393939396
#pos(a121,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.10689655172414
#pos(a122,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(a,a)).}).
%%Value was:-9.270588235294118
#pos(a123,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.287692307692309
#pos(a124,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-9.291228070175439
#pos(a125,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.314285714285715
#pos(a126,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-9.319607843137256
#pos(a127,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.332692307692309
#pos(a128,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.351020408163267
#pos(a129,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(avoid(a,a)).}).
%%Value was:-9.406250000000002
#pos(a130,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.425581395348837
#pos(a131,
{},
{},
{visible(a).
visible(b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.585416666666667
#pos(a132,
{},
{},
{on(agent,b).
visible(c).
platform(c).
visible(b).
ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.100000000000001
#pos(a133,
{},
{},
{on(agent,b).
visible(c).
platform(c).
visible(b).
ramp(b).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-9.0
#pos(a134,
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
#pos(a135,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:3.383333333333331
#pos(a136,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-4.553488372093026
#pos(a137,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-6.728000000000003
#pos(a138,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.729746835443045
#pos(a139,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-7.566133333333341
#pos(a140,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-7.648181818181819
#pos(a141,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.653414634146345
#pos(a142,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-7.654615384615393
#pos(a143,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-7.744318181818183
#pos(a144,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.751718750000007
#pos(a145,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.768714285714293
#pos(a146,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-7.812676056338035
#pos(a147,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-7.947804878048786
#pos(a148,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-7.997468354430385
#pos(a149,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.005416666666672
#pos(a150,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-8.013780487804883
#pos(a151,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-8.02265822784811
#pos(a152,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-8.047857142857152
#pos(a153,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-8.05797468354431
#pos(a154,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-8.102409638554224
#pos(a155,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(c,c)).}).
%%Value was:-8.136285714285721
#pos(a156,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.182592592592597
#pos(a157,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-8.184878048780496
#pos(a158,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(a,a)).}).
%%Value was:-8.19363636363637
#pos(a159,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-8.211410256410264
#pos(a160,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(a,a)).}).
%%Value was:-8.232135922330098
#pos(a161,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(balance(c,c)).}).
%%Value was:-8.268375000000002
#pos(a162,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.30544117647059
#pos(a163,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.724687500000002
#pos(a164,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-8.769625000000001
#pos(a165,
{},
{},
{visible(a).
visible(b).
platform(b).
visible(c).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.822987012987015
#pos(a166,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:100.0
#pos(a167,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:6.658333333333334
#pos(a168,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:2.3625
#pos(a169,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.700000000000001
#pos(a170,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a171,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-9.5
#pos(a172,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.833333333333334
#pos(a173,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a174,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(a,a)).}).
%%Value was:-10.0
#pos(a175,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(balance(a,a)).}).
%%Value was:-10.0
#pos(a176,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a177,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a178,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a179,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-10.0
#pos(a180,
{},
{},
{visible(a).
visible(b).
lava(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a181,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:9.342216312056731
#pos(a182,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-3.4047887323943633
#pos(a183,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.25
#pos(a184,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.265
#pos(a185,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.346666666666666
#pos(a186,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(balance(b,b)).}).
%%Value was:-9.347619047619046
#pos(a187,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.392307692307693
#pos(a188,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(avoid(b,b)).}).
%%Value was:-9.57878787878788
#pos(a189,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.596875
#pos(a190,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a191,
{},
{},
{visible(b).
ramp(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a0, a6).
#brave_ordering(b6@10, a7, a8).
#brave_ordering(b7@10, a7, a9).
#brave_ordering(b8@10, a7, a10).
#brave_ordering(b9@10, a7, a11).
#brave_ordering(b10@10, a7, a12).
#brave_ordering(b11@10, a7, a13).
#brave_ordering(b12@10, a7, a14).
#brave_ordering(b13@10, a7, a15).
#brave_ordering(b14@10, a16, a17).
#brave_ordering(b15@10, a16, a18).
#brave_ordering(b16@10, a16, a19).
#brave_ordering(b17@10, a16, a20).
#brave_ordering(b18@10, a16, a21).
#brave_ordering(b19@10, a16, a22).
#brave_ordering(b20@10, a16, a23).
#brave_ordering(b21@10, a16, a24).
#brave_ordering(b22@10, a16, a25).
#brave_ordering(b23@10, a16, a26).
#brave_ordering(b24@10, a16, a27).
#brave_ordering(b25@10, a16, a28).
#brave_ordering(b26@10, a16, a29).
#brave_ordering(b27@10, a16, a30).
#brave_ordering(b28@10, a16, a31).
#brave_ordering(b29@10, a16, a32).
#brave_ordering(b30@10, a16, a33).
#brave_ordering(b31@10, a16, a34).
#brave_ordering(b32@10, a16, a35).
#brave_ordering(b33@10, a16, a36).
#brave_ordering(b34@10, a16, a37).
#brave_ordering(b35@10, a38, a39).
#brave_ordering(b36@10, a38, a40).
#brave_ordering(b37@10, a38, a41).
#brave_ordering(b38@10, a38, a42).
#brave_ordering(b39@10, a38, a43).
#brave_ordering(b40@10, a38, a44).
#brave_ordering(b41@10, a38, a45).
#brave_ordering(b42@10, a38, a46).
#brave_ordering(b43@10, a38, a47).
#brave_ordering(b44@10, a38, a48).
#brave_ordering(b45@10, a38, a49).
#brave_ordering(b46@10, a38, a50).
#brave_ordering(b47@10, a38, a51).
#brave_ordering(b48@10, a38, a52).
#brave_ordering(b49@10, a53, a54).
#brave_ordering(b50@10, a53, a55).
#brave_ordering(b51@10, a53, a56).
#brave_ordering(b52@10, a53, a57).
#brave_ordering(b53@10, a53, a58).
#brave_ordering(b54@10, a53, a59).
#brave_ordering(b55@10, a60, a61).
#brave_ordering(b56@10, a62, a63).
#brave_ordering(b57@10, a62, a64).
#brave_ordering(b58@10, a62, a65).
#brave_ordering(b59@10, a62, a66).
#brave_ordering(b60@10, a62, a67).
#brave_ordering(b61@10, a68, a69).
#brave_ordering(b62@10, a70, a71).
#brave_ordering(b63@10, a70, a72).
#brave_ordering(b64@10, a70, a73).
#brave_ordering(b65@10, a70, a74).
#brave_ordering(b66@10, a70, a75).
#brave_ordering(b67@10, a70, a76).
#brave_ordering(b68@10, a70, a77).
#brave_ordering(b69@10, a70, a78).
#brave_ordering(b70@10, a79, a80).
#brave_ordering(b71@10, a79, a81).
#brave_ordering(b72@10, a79, a82).
#brave_ordering(b73@10, a79, a83).
#brave_ordering(b74@10, a79, a84).
#brave_ordering(b75@10, a79, a85).
#brave_ordering(b76@10, a79, a86).
#brave_ordering(b77@10, a79, a87).
#brave_ordering(b78@10, a79, a88).
#brave_ordering(b79@10, a79, a89).
#brave_ordering(b80@10, a79, a90).
#brave_ordering(b81@10, a79, a91).
#brave_ordering(b82@10, a79, a92).
#brave_ordering(b83@10, a79, a93).
#brave_ordering(b84@10, a94, a95).
#brave_ordering(b85@10, a94, a96).
#brave_ordering(b86@10, a94, a97).
#brave_ordering(b87@10, a98, a99).
#brave_ordering(b88@10, a98, a100).
#brave_ordering(b89@10, a98, a101).
#brave_ordering(b90@10, a98, a102).
#brave_ordering(b91@10, a98, a103).
#brave_ordering(b92@10, a98, a104).
#brave_ordering(b93@10, a98, a105).
#brave_ordering(b94@10, a98, a106).
#brave_ordering(b95@10, a107, a108).
#brave_ordering(b96@10, a107, a109).
#brave_ordering(b97@10, a107, a110).
#brave_ordering(b98@10, a107, a111).
#brave_ordering(b99@10, a112, a113).
#brave_ordering(b100@10, a112, a114).
#brave_ordering(b101@10, a112, a115).
#brave_ordering(b102@10, a112, a116).
#brave_ordering(b103@10, a117, a118).
#brave_ordering(b104@10, a117, a119).
#brave_ordering(b105@10, a117, a120).
#brave_ordering(b106@10, a117, a121).
#brave_ordering(b107@10, a117, a122).
#brave_ordering(b108@10, a117, a123).
#brave_ordering(b109@10, a117, a124).
#brave_ordering(b110@10, a117, a125).
#brave_ordering(b111@10, a117, a126).
#brave_ordering(b112@10, a117, a127).
#brave_ordering(b113@10, a117, a128).
#brave_ordering(b114@10, a117, a129).
#brave_ordering(b115@10, a117, a130).
#brave_ordering(b116@10, a117, a131).
#brave_ordering(b117@10, a132, a133).
#brave_ordering(b118@10, a132, a134).
#brave_ordering(b119@10, a135, a136).
#brave_ordering(b120@10, a135, a137).
#brave_ordering(b121@10, a135, a138).
#brave_ordering(b122@10, a135, a139).
#brave_ordering(b123@10, a135, a140).
#brave_ordering(b124@10, a135, a141).
#brave_ordering(b125@10, a135, a142).
#brave_ordering(b126@10, a135, a143).
#brave_ordering(b127@10, a135, a144).
#brave_ordering(b128@10, a135, a145).
#brave_ordering(b129@10, a135, a146).
#brave_ordering(b130@10, a135, a147).
#brave_ordering(b131@10, a135, a148).
#brave_ordering(b132@10, a135, a149).
#brave_ordering(b133@10, a135, a150).
#brave_ordering(b134@10, a135, a151).
#brave_ordering(b135@10, a135, a152).
#brave_ordering(b136@10, a135, a153).
#brave_ordering(b137@10, a135, a154).
#brave_ordering(b138@10, a135, a155).
#brave_ordering(b139@10, a135, a156).
#brave_ordering(b140@10, a135, a157).
#brave_ordering(b141@10, a135, a158).
#brave_ordering(b142@10, a135, a159).
#brave_ordering(b143@10, a135, a160).
#brave_ordering(b144@10, a135, a161).
#brave_ordering(b145@10, a135, a162).
#brave_ordering(b146@10, a135, a163).
#brave_ordering(b147@10, a135, a164).
#brave_ordering(b148@10, a135, a165).
#brave_ordering(b149@10, a166, a167).
#brave_ordering(b150@10, a166, a168).
#brave_ordering(b151@10, a166, a169).
#brave_ordering(b152@10, a166, a170).
#brave_ordering(b153@10, a166, a171).
#brave_ordering(b154@10, a166, a172).
#brave_ordering(b155@10, a166, a173).
#brave_ordering(b156@10, a166, a174).
#brave_ordering(b157@10, a166, a175).
#brave_ordering(b158@10, a166, a176).
#brave_ordering(b159@10, a166, a177).
#brave_ordering(b160@10, a166, a178).
#brave_ordering(b161@10, a166, a179).
#brave_ordering(b162@10, a166, a180).
#brave_ordering(b163@10, a181, a182).
#brave_ordering(b164@10, a183, a184).
#brave_ordering(b165@10, a183, a185).
#brave_ordering(b166@10, a183, a186).
#brave_ordering(b167@10, a183, a187).
#brave_ordering(b168@10, a183, a188).
#brave_ordering(b169@10, a183, a189).
#brave_ordering(b170@10, a183, a190).
#brave_ordering(b171@10, a183, a191).
