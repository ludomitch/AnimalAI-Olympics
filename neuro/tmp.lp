
present(X):-goal(X).
present(X):- visible(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).
#modeo(1, initiate(rotate)).
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(explore(var(x),var(y)))).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, initiate(avoid(var(x),var(y)))).
#modeo(1, on(agent, var(x))).
#modeo(1, occludes(var(x),var(y))).
#modeo(1, goal(var(x))).
#modeo(1, wall(var(x))).
#modeo(1, platform(var(x))).
#modeo(1, lava(var(x))).
#modeo(1, ramp(var(x))).

#weight(1).
#weight(-1).
#maxv(4).
#maxp(6).
#pos(a0,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(c,d)).}).
%%Value was:10.0
#pos(a1,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:10.0
#pos(a2,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(b,d)).}).
%%Value was:10.0
#pos(a3,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(explore(d,a)).}).
%%Value was:9.0
#pos(a4,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(b,d)).}).
%%Value was:9.0
#pos(a5,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-2.4299999999999997
#pos(a6,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(explore(d,c)).}).
%%Value was:-7.002450000000001
#pos(a7,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-8.100000000000001
#pos(a8,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.100000000000001
#pos(a9,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(interact(c)).}).
%%Value was:-8.2805
#pos(a10,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(explore(a,d)).}).
%%Value was:-9.0
#pos(a11,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a12,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-9.0
#pos(a13,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.0
#pos(a14,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-9.5
#pos(a15,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.666666666666666
#pos(a16,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a17,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(d,a)).}).
%%Value was:-10.0
#pos(a18,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-10.0
#pos(a19,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-10.0
#pos(a20,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(climb(d)).}).
%%Value was:-10.0
#pos(a21,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a22,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a23,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a24,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a25,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(d,c)).}).
%%Value was:-10.0
#pos(a26,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-10.0
#pos(a27,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(interact(d)).}).
%%Value was:-10.0
#pos(a28,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-9.0
#pos(a29,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a30,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a31,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a32,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a33,
{},
{},
{platform(c).
lava(a).
lava(b).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-9.0
#pos(a34,
{},
{},
{platform(c).
lava(a).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a35,
{},
{},
{lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:3.3333333333333335
#pos(a36,
{},
{},
{lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:0.0
#pos(a37,
{},
{},
{lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-2.43
#pos(a38,
{},
{},
{lava(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.55
#pos(a39,
{},
{},
{lava(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.55
#pos(a40,
{},
{},
{lava(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.333333333333334
#pos(a41,
{},
{},
{lava(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a42,
{},
{},
{lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a43,
{},
{},
{lava(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a44,
{},
{},
{ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.100000000000001
#pos(a45,
{},
{},
{ramp(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.100000000000001
#pos(a46,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.0
#pos(a47,
{},
{},
{ramp(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a48,
{},
{},
{ramp(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a49,
{},
{},
{wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.298000000000002
#pos(a50,
{},
{},
{wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.33625
#pos(a51,
{},
{},
{wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-8.843333333333334
#pos(a52,
{},
{},
{wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-9.025
#pos(a53,
{},
{},
{wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.080142857142857
#pos(a54,
{},
{},
{wall(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.0875
#pos(a55,
{},
{},
{wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.144444444444446
#pos(a56,
{},
{},
{wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.466666666666667
#pos(a57,
{},
{},
{wall(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.728571428571428
#pos(a58,
{},
{},
{wall(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a59,
{},
{},
{wall(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a60,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:10.0
#pos(a61,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:10.0
#pos(a62,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:8.55
#pos(a63,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:0.0
#pos(a64,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-3.7285714285714286
#pos(a65,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-4.050000000000001
#pos(a66,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-7.290000000000001
#pos(a67,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-7.86
#pos(a68,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-8.145
#pos(a69,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(rotate).}).
%%Value was:-8.4
#pos(a70,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.853666666666667
#pos(a71,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.0
#pos(a72,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-9.0
#pos(a73,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-9.0
#pos(a74,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-9.0
#pos(a75,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.5
#pos(a76,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-9.75
#pos(a77,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-10.0
#pos(a78,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a79,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-10.0
#pos(a80,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-10.0
#pos(a81,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a82,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-10.0
#pos(a83,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a84,
{},
{},
{platform(l).
lava(b).
lava(c).
lava(d).
lava(e).
lava(f).
lava(g).
lava(h).
lava(i).
lava(j).
lava(k).
ramp(m).
goal(a).
initiate(explore(b,i)).}).
%%Value was:-10.0
#pos(a85,
{},
{},
{platform(l).
lava(b).
lava(c).
lava(d).
lava(e).
lava(f).
lava(g).
lava(h).
lava(i).
lava(j).
lava(k).
ramp(m).
goal(a).
initiate(explore(c,m)).}).
%%Value was:-10.0
#pos(a86,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(balance(f,d)).}).
%%Value was:-9.0
#pos(a87,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-10.0
#pos(a88,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(avoid(e,d)).}).
%%Value was:10.0
#pos(a89,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(explore(e,a)).}).
%%Value was:-6.561
#pos(a90,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(explore(d,c)).}).
%%Value was:-6.561
#pos(a91,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(explore(b,d)).}).
%%Value was:-8.100000000000001
#pos(a92,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.100000000000001
#pos(a93,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(explore(e,d)).}).
%%Value was:-9.0
#pos(a94,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(explore(c,e)).}).
%%Value was:-9.0
#pos(a95,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-9.0
#pos(a96,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-9.0
#pos(a97,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(avoid(d,c)).}).
%%Value was:-10.0
#pos(a98,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-10.0
#pos(a99,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(balance(d,e)).}).
%%Value was:-10.0
#pos(a100,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(balance(d,b)).}).
%%Value was:-10.0
#pos(a101,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a102,
{},
{},
{platform(i).
lava(b).
lava(c).
lava(d).
lava(e).
lava(f).
lava(g).
lava(h).
ramp(j).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.0
#pos(a103,
{},
{},
{platform(i).
lava(b).
lava(c).
lava(d).
lava(e).
lava(f).
lava(g).
lava(h).
ramp(j).
goal(a).
initiate(avoid(d,f)).}).
%%Value was:-9.0
#pos(a104,
{},
{},
{platform(i).
lava(b).
lava(c).
lava(d).
lava(e).
lava(f).
lava(g).
lava(h).
ramp(j).
goal(a).
initiate(avoid(h,c)).}).
%%Value was:-10.0
#pos(a105,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.64265
#pos(a106,
{},
{},
{platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.211538461538462
#pos(a107,
{},
{},
{platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.498000000000001
#pos(a108,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.751722222222222
#pos(a109,
{},
{},
{platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.783333333333333
#pos(a110,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.135454545454547
#pos(a111,
{},
{},
{platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.176923076923078
#pos(a112,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.275
#pos(a113,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.37142857142857
#pos(a114,
{},
{},
{platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.645454545454545
#pos(a115,
{},
{},
{platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.7
#pos(a116,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-5.3937
#pos(a117,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-5.9049000000000005
#pos(a118,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-6.561
#pos(a119,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-6.7195285714285715
#pos(a120,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-6.765282000000001
#pos(a121,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-6.883842857142857
#pos(a122,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-6.941862
#pos(a123,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.07796
#pos(a124,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-7.107750000000001
#pos(a125,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.1371125
#pos(a126,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-7.207650000000001
#pos(a127,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.256725
#pos(a128,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-7.260571428571429
#pos(a129,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-7.290000000000001
#pos(a130,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-7.313142857142858
#pos(a131,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.468200000000001
#pos(a132,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-7.470254545454546
#pos(a133,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.560882000000001
#pos(a134,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.993500000000001
#pos(a135,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-8.13
#pos(a136,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-8.232483333333333
#pos(a137,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-8.298
#pos(a138,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-8.470000000000002
#pos(a139,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-8.498000000000001
#pos(a140,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-8.722222222222221
#pos(a141,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-6.561
#pos(a142,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.290000000000001
#pos(a143,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-7.330500000000001
#pos(a144,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(d,b)).}).
%%Value was:-8.100000000000001
#pos(a145,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-8.100000000000001
#pos(a146,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-8.100000000000001
#pos(a147,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.100000000000001
#pos(a148,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(c,d)).}).
%%Value was:-8.100000000000001
#pos(a149,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(interact(c)).}).
%%Value was:-8.100000000000001
#pos(a150,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.145
#pos(a151,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-8.55
#pos(a152,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(climb(c)).}).
%%Value was:-9.0
#pos(a153,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(b,d)).}).
%%Value was:-9.0
#pos(a154,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-9.0
#pos(a155,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.0
#pos(a156,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-9.5
#pos(a157,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a158,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-10.0
#pos(a159,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a160,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(d,c)).}).
%%Value was:-10.0
#pos(a161,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-8.181866037735851
#pos(a162,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-8.615
#pos(a163,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-9.624809523809525
#pos(a164,
{},
{},
{platform(h).
lava(b).
lava(c).
lava(d).
lava(e).
lava(f).
lava(g).
ramp(i).
goal(a).
initiate(climb(i)).}).
%%Value was:9.0
#pos(a165,
{},
{},
{platform(h).
lava(b).
lava(c).
lava(d).
lava(e).
lava(f).
lava(g).
ramp(i).
goal(a).
initiate(balance(h,e)).}).
%%Value was:-10.0
#pos(a166,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.290000000000001
#pos(a167,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(explore(c,e)).}).
%%Value was:-7.290000000000001
#pos(a168,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(climb(e)).}).
%%Value was:-8.100000000000001
#pos(a169,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(explore(c,d)).}).
%%Value was:-8.100000000000001
#pos(a170,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(avoid(b,e)).}).
%%Value was:-9.0
#pos(a171,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-10.0
#pos(a172,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(balance(e,a)).}).
%%Value was:-10.0
#pos(a173,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-10.0
#pos(a174,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(avoid(a,e)).}).
%%Value was:-10.0
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
#brave_ordering(b10@10, a0, a11).
#brave_ordering(b11@10, a0, a12).
#brave_ordering(b12@10, a0, a13).
#brave_ordering(b13@10, a0, a14).
#brave_ordering(b14@10, a0, a15).
#brave_ordering(b15@10, a0, a16).
#brave_ordering(b16@10, a0, a17).
#brave_ordering(b17@10, a0, a18).
#brave_ordering(b18@10, a0, a19).
#brave_ordering(b19@10, a0, a20).
#brave_ordering(b20@10, a0, a21).
#brave_ordering(b21@10, a0, a22).
#brave_ordering(b22@10, a0, a23).
#brave_ordering(b23@10, a0, a24).
#brave_ordering(b24@10, a0, a25).
#brave_ordering(b25@10, a0, a26).
#brave_ordering(b26@10, a0, a27).
#brave_ordering(b27@10, a28, a29).
#brave_ordering(b28@10, a28, a30).
#brave_ordering(b29@10, a28, a31).
#brave_ordering(b30@10, a28, a32).
#brave_ordering(b31@10, a33, a34).
#brave_ordering(b32@10, a35, a36).
#brave_ordering(b33@10, a35, a37).
#brave_ordering(b34@10, a35, a38).
#brave_ordering(b35@10, a35, a39).
#brave_ordering(b36@10, a35, a40).
#brave_ordering(b37@10, a35, a41).
#brave_ordering(b38@10, a35, a42).
#brave_ordering(b39@10, a35, a43).
#brave_ordering(b40@10, a44, a45).
#brave_ordering(b41@10, a44, a46).
#brave_ordering(b42@10, a44, a47).
#brave_ordering(b43@10, a44, a48).
#brave_ordering(b44@10, a49, a50).
#brave_ordering(b45@10, a49, a51).
#brave_ordering(b46@10, a49, a52).
#brave_ordering(b47@10, a49, a53).
#brave_ordering(b48@10, a49, a54).
#brave_ordering(b49@10, a49, a55).
#brave_ordering(b50@10, a49, a56).
#brave_ordering(b51@10, a49, a57).
#brave_ordering(b52@10, a49, a58).
#brave_ordering(b53@10, a49, a59).
#brave_ordering(b54@10, a60, a61).
#brave_ordering(b55@10, a60, a62).
#brave_ordering(b56@10, a60, a63).
#brave_ordering(b57@10, a60, a64).
#brave_ordering(b58@10, a60, a65).
#brave_ordering(b59@10, a60, a66).
#brave_ordering(b60@10, a60, a67).
#brave_ordering(b61@10, a60, a68).
#brave_ordering(b62@10, a60, a69).
#brave_ordering(b63@10, a60, a70).
#brave_ordering(b64@10, a60, a71).
#brave_ordering(b65@10, a60, a72).
#brave_ordering(b66@10, a60, a73).
#brave_ordering(b67@10, a60, a74).
#brave_ordering(b68@10, a60, a75).
#brave_ordering(b69@10, a60, a76).
#brave_ordering(b70@10, a60, a77).
#brave_ordering(b71@10, a60, a78).
#brave_ordering(b72@10, a60, a79).
#brave_ordering(b73@10, a60, a80).
#brave_ordering(b74@10, a60, a81).
#brave_ordering(b75@10, a60, a82).
#brave_ordering(b76@10, a60, a83).
#brave_ordering(b77@10, a84, a85).
#brave_ordering(b78@10, a86, a87).
#brave_ordering(b79@10, a88, a89).
#brave_ordering(b80@10, a88, a90).
#brave_ordering(b81@10, a88, a91).
#brave_ordering(b82@10, a88, a92).
#brave_ordering(b83@10, a88, a93).
#brave_ordering(b84@10, a88, a94).
#brave_ordering(b85@10, a88, a95).
#brave_ordering(b86@10, a88, a96).
#brave_ordering(b87@10, a88, a97).
#brave_ordering(b88@10, a88, a98).
#brave_ordering(b89@10, a88, a99).
#brave_ordering(b90@10, a88, a100).
#brave_ordering(b91@10, a88, a101).
#brave_ordering(b92@10, a102, a103).
#brave_ordering(b93@10, a102, a104).
#brave_ordering(b94@10, a105, a106).
#brave_ordering(b95@10, a105, a107).
#brave_ordering(b96@10, a105, a108).
#brave_ordering(b97@10, a105, a109).
#brave_ordering(b98@10, a105, a110).
#brave_ordering(b99@10, a105, a111).
#brave_ordering(b100@10, a105, a112).
#brave_ordering(b101@10, a105, a113).
#brave_ordering(b102@10, a105, a114).
#brave_ordering(b103@10, a105, a115).
#brave_ordering(b104@10, a116, a117).
#brave_ordering(b105@10, a116, a118).
#brave_ordering(b106@10, a116, a119).
#brave_ordering(b107@10, a116, a120).
#brave_ordering(b108@10, a116, a121).
#brave_ordering(b109@10, a116, a122).
#brave_ordering(b110@10, a116, a123).
#brave_ordering(b111@10, a116, a124).
#brave_ordering(b112@10, a116, a125).
#brave_ordering(b113@10, a116, a126).
#brave_ordering(b114@10, a116, a127).
#brave_ordering(b115@10, a116, a128).
#brave_ordering(b116@10, a116, a129).
#brave_ordering(b117@10, a116, a130).
#brave_ordering(b118@10, a116, a131).
#brave_ordering(b119@10, a116, a132).
#brave_ordering(b120@10, a116, a133).
#brave_ordering(b121@10, a116, a134).
#brave_ordering(b122@10, a116, a135).
#brave_ordering(b123@10, a116, a136).
#brave_ordering(b124@10, a116, a137).
#brave_ordering(b125@10, a116, a138).
#brave_ordering(b126@10, a116, a139).
#brave_ordering(b127@10, a116, a140).
#brave_ordering(b128@10, a141, a142).
#brave_ordering(b129@10, a141, a143).
#brave_ordering(b130@10, a141, a144).
#brave_ordering(b131@10, a141, a145).
#brave_ordering(b132@10, a141, a146).
#brave_ordering(b133@10, a141, a147).
#brave_ordering(b134@10, a141, a148).
#brave_ordering(b135@10, a141, a149).
#brave_ordering(b136@10, a141, a150).
#brave_ordering(b137@10, a141, a151).
#brave_ordering(b138@10, a141, a152).
#brave_ordering(b139@10, a141, a153).
#brave_ordering(b140@10, a141, a154).
#brave_ordering(b141@10, a141, a155).
#brave_ordering(b142@10, a141, a156).
#brave_ordering(b143@10, a141, a157).
#brave_ordering(b144@10, a141, a158).
#brave_ordering(b145@10, a141, a159).
#brave_ordering(b146@10, a141, a160).
#brave_ordering(b147@10, a161, a162).
#brave_ordering(b148@10, a161, a163).
#brave_ordering(b149@10, a164, a165).
#brave_ordering(b150@10, a166, a167).
#brave_ordering(b151@10, a166, a168).
#brave_ordering(b152@10, a166, a169).
#brave_ordering(b153@10, a166, a170).
#brave_ordering(b154@10, a166, a171).
#brave_ordering(b155@10, a166, a172).
#brave_ordering(b156@10, a166, a173).
#brave_ordering(b157@10, a166, a174).
