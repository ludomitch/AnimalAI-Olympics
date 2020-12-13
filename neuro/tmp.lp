
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
goal(a).
initiate(avoid(b,a)).}).
%%Value was:10.0
#pos(a1,
{},
{},
{lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-3.7285714285714286
#pos(a2,
{},
{},
{lava(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-4.6425
#pos(a3,
{},
{},
{lava(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-6.677437499999998
#pos(a4,
{},
{},
{lava(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.12
#pos(a5,
{},
{},
{lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a6,
{},
{},
{lava(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a7,
{},
{},
{lava(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a8,
{},
{},
{lava(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a9,
{},
{},
{lava(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a10,
{},
{},
{lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#pos(a11,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-8.380741379310349
#pos(a12,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-8.592118000000001
#pos(a13,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-9.465938775510205
#pos(a14,
{},
{},
{platform(f).
lava(b).
lava(c).
lava(d).
lava(e).
ramp(g).
goal(a).
initiate(explore(e,g)).}).
%%Value was:-8.100000000000001
#pos(a15,
{},
{},
{platform(f).
lava(b).
lava(c).
lava(d).
lava(e).
ramp(g).
goal(a).
initiate(climb(e)).}).
%%Value was:-8.100000000000001
#pos(a16,
{},
{},
{platform(f).
lava(b).
lava(c).
lava(d).
lava(e).
ramp(g).
goal(a).
initiate(balance(d,c)).}).
%%Value was:-10.0
#pos(a17,
{},
{},
{lava(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-6.561
#pos(a18,
{},
{},
{lava(b).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-7.290000000000001
#pos(a19,
{},
{},
{lava(b).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-9.0
#pos(a20,
{},
{},
{lava(b).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a21,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-8.100000000000001
#pos(a22,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-8.100000000000001
#pos(a23,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-8.100000000000001
#pos(a24,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-9.0
#pos(a25,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a26,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(avoid(d,a)).}).
%%Value was:-10.0
#pos(a27,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-10.0
#pos(a28,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-8.645
#pos(a29,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.0
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
initiate(balance(b,a)).}).
%%Value was:-10.0
#pos(a32,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-10.0
#pos(a33,
{},
{},
{on(agent,d).
platform(d).
lava(b).
lava(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.290000000000001
#pos(a34,
{},
{},
{on(agent,d).
platform(d).
lava(b).
lava(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-7.290000000000001
#pos(a35,
{},
{},
{on(agent,d).
platform(d).
lava(b).
lava(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-8.100000000000001
#pos(a36,
{},
{},
{on(agent,d).
platform(d).
lava(b).
lava(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.0
#pos(a37,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
ramp(f).
goal(a).
initiate(explore(f,b)).}).
%%Value was:-8.100000000000001
#pos(a38,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
ramp(f).
goal(a).
initiate(balance(d,e)).}).
%%Value was:-10.0
#pos(a39,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(balance(f,d)).}).
%%Value was:-7.290000000000001
#pos(a40,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(explore(e,b)).}).
%%Value was:-8.100000000000001
#pos(a41,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(balance(d,b)).}).
%%Value was:-10.0
#pos(a42,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(avoid(a,d)).}).
%%Value was:-10.0
#pos(a43,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(explore(c,f)).}).
%%Value was:-10.0
#pos(a44,
{},
{},
{wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.105590000000001
#pos(a45,
{},
{},
{wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.274705882352942
#pos(a46,
{},
{},
{wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.4825
#pos(a47,
{},
{},
{wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.853666666666667
#pos(a48,
{},
{},
{wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.285714285714286
#pos(a49,
{},
{},
{wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.325
#pos(a50,
{},
{},
{wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.35
#pos(a51,
{},
{},
{wall(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.75
#pos(a52,
{},
{},
{wall(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.827272727272726
#pos(a53,
{},
{},
{wall(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a54,
{},
{},
{wall(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a55,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-5.3144100000000005
#pos(a56,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.100000000000001
#pos(a57,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-8.100000000000001
#pos(a58,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(c,d)).}).
%%Value was:-8.100000000000001
#pos(a59,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-9.0
#pos(a60,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.0
#pos(a61,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(interact(d)).}).
%%Value was:-9.0
#pos(a62,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-9.0
#pos(a63,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(b,d)).}).
%%Value was:-9.0
#pos(a64,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.0
#pos(a65,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-9.05
#pos(a66,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(d,b)).}).
%%Value was:-9.5
#pos(a67,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a68,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(avoid(d,b)).}).
%%Value was:-10.0
#pos(a69,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-10.0
#pos(a70,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a71,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-6.292661727272727
#pos(a72,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-6.387405428571428
#pos(a73,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-6.427945350000001
#pos(a74,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-6.4514078999999995
#pos(a75,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.457482000000001
#pos(a76,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-6.638657142857142
#pos(a77,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-6.852735
#pos(a78,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-6.8819625
#pos(a79,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-6.893385000000001
#pos(a80,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.0421869
#pos(a81,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.137112500000001
#pos(a82,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-7.14690125
#pos(a83,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-7.1694
#pos(a84,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-7.300125
#pos(a85,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.4682
#pos(a86,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-7.49898
#pos(a87,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-7.560000000000001
#pos(a88,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-7.674975000000001
#pos(a89,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-7.6861999999999995
#pos(a90,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.786801250000001
#pos(a91,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.790142857142857
#pos(a92,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-7.930125
#pos(a93,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.053128181818183
#pos(a94,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-8.397142857142857
#pos(a95,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-8.5322
#pos(a96,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.100000000000001
#pos(a97,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.100000000000001
#pos(a98,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.0
#pos(a99,
{},
{},
{on(agent,b).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.0
#pos(a100,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.122500000000002
#pos(a101,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.384285714285715
#pos(a102,
{},
{},
{platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.408000000000001
#pos(a103,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.6594
#pos(a104,
{},
{},
{platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.760625000000001
#pos(a105,
{},
{},
{platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.862727272727273
#pos(a106,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.235714285714284
#pos(a107,
{},
{},
{platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.360000000000001
#pos(a108,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.476666666666667
#pos(a109,
{},
{},
{platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.623809523809523
#pos(a110,
{},
{},
{platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.642857142857142
#pos(a111,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-6.828300000000001
#pos(a112,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-6.855300000000001
#pos(a113,
{},
{},
{ramp(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-7.290000000000001
#pos(a114,
{},
{},
{ramp(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-8.145
#pos(a115,
{},
{},
{ramp(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.463333333333333
#pos(a116,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.55
#pos(a117,
{},
{},
{ramp(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.05
#pos(a118,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.5
#pos(a119,
{},
{},
{ramp(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a120,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(explore(d,e)).}).
%%Value was:-8.100000000000001
#pos(a121,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-8.2805
#pos(a122,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(explore(c,d)).}).
%%Value was:-9.0
#pos(a123,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(explore(e,b)).}).
%%Value was:-9.0
#pos(a124,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-10.0
#pos(a125,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(interact(c)).}).
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
#brave_ordering(b10@10, a11, a12).
#brave_ordering(b11@10, a11, a13).
#brave_ordering(b12@10, a14, a15).
#brave_ordering(b13@10, a14, a16).
#brave_ordering(b14@10, a17, a18).
#brave_ordering(b15@10, a17, a19).
#brave_ordering(b16@10, a17, a20).
#brave_ordering(b17@10, a21, a22).
#brave_ordering(b18@10, a21, a23).
#brave_ordering(b19@10, a21, a24).
#brave_ordering(b20@10, a21, a25).
#brave_ordering(b21@10, a21, a26).
#brave_ordering(b22@10, a21, a27).
#brave_ordering(b23@10, a28, a29).
#brave_ordering(b24@10, a28, a30).
#brave_ordering(b25@10, a28, a31).
#brave_ordering(b26@10, a28, a32).
#brave_ordering(b27@10, a33, a34).
#brave_ordering(b28@10, a33, a35).
#brave_ordering(b29@10, a33, a36).
#brave_ordering(b30@10, a37, a38).
#brave_ordering(b31@10, a39, a40).
#brave_ordering(b32@10, a39, a41).
#brave_ordering(b33@10, a39, a42).
#brave_ordering(b34@10, a39, a43).
#brave_ordering(b35@10, a44, a45).
#brave_ordering(b36@10, a44, a46).
#brave_ordering(b37@10, a44, a47).
#brave_ordering(b38@10, a44, a48).
#brave_ordering(b39@10, a44, a49).
#brave_ordering(b40@10, a44, a50).
#brave_ordering(b41@10, a44, a51).
#brave_ordering(b42@10, a44, a52).
#brave_ordering(b43@10, a44, a53).
#brave_ordering(b44@10, a44, a54).
#brave_ordering(b45@10, a55, a56).
#brave_ordering(b46@10, a55, a57).
#brave_ordering(b47@10, a55, a58).
#brave_ordering(b48@10, a55, a59).
#brave_ordering(b49@10, a55, a60).
#brave_ordering(b50@10, a55, a61).
#brave_ordering(b51@10, a55, a62).
#brave_ordering(b52@10, a55, a63).
#brave_ordering(b53@10, a55, a64).
#brave_ordering(b54@10, a55, a65).
#brave_ordering(b55@10, a55, a66).
#brave_ordering(b56@10, a55, a67).
#brave_ordering(b57@10, a55, a68).
#brave_ordering(b58@10, a55, a69).
#brave_ordering(b59@10, a55, a70).
#brave_ordering(b60@10, a71, a72).
#brave_ordering(b61@10, a71, a73).
#brave_ordering(b62@10, a71, a74).
#brave_ordering(b63@10, a71, a75).
#brave_ordering(b64@10, a71, a76).
#brave_ordering(b65@10, a71, a77).
#brave_ordering(b66@10, a71, a78).
#brave_ordering(b67@10, a71, a79).
#brave_ordering(b68@10, a71, a80).
#brave_ordering(b69@10, a71, a81).
#brave_ordering(b70@10, a71, a82).
#brave_ordering(b71@10, a71, a83).
#brave_ordering(b72@10, a71, a84).
#brave_ordering(b73@10, a71, a85).
#brave_ordering(b74@10, a71, a86).
#brave_ordering(b75@10, a71, a87).
#brave_ordering(b76@10, a71, a88).
#brave_ordering(b77@10, a71, a89).
#brave_ordering(b78@10, a71, a90).
#brave_ordering(b79@10, a71, a91).
#brave_ordering(b80@10, a71, a92).
#brave_ordering(b81@10, a71, a93).
#brave_ordering(b82@10, a71, a94).
#brave_ordering(b83@10, a71, a95).
#brave_ordering(b84@10, a96, a97).
#brave_ordering(b85@10, a96, a98).
#brave_ordering(b86@10, a96, a99).
#brave_ordering(b87@10, a100, a101).
#brave_ordering(b88@10, a100, a102).
#brave_ordering(b89@10, a100, a103).
#brave_ordering(b90@10, a100, a104).
#brave_ordering(b91@10, a100, a105).
#brave_ordering(b92@10, a100, a106).
#brave_ordering(b93@10, a100, a107).
#brave_ordering(b94@10, a100, a108).
#brave_ordering(b95@10, a100, a109).
#brave_ordering(b96@10, a100, a110).
#brave_ordering(b97@10, a111, a112).
#brave_ordering(b98@10, a111, a113).
#brave_ordering(b99@10, a111, a114).
#brave_ordering(b100@10, a111, a115).
#brave_ordering(b101@10, a111, a116).
#brave_ordering(b102@10, a111, a117).
#brave_ordering(b103@10, a111, a118).
#brave_ordering(b104@10, a111, a119).
#brave_ordering(b105@10, a120, a121).
#brave_ordering(b106@10, a120, a122).
#brave_ordering(b107@10, a120, a123).
#brave_ordering(b108@10, a120, a124).
#brave_ordering(b109@10, a120, a125).
