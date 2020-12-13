
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
{platform(c).
lava(b).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-9.5
#pos(a1,
{},
{},
{platform(c).
lava(b).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-10.0
#pos(a2,
{},
{},
{platform(c).
lava(a).
lava(b).
ramp(d).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.0
#pos(a3,
{},
{},
{platform(c).
lava(a).
lava(b).
ramp(d).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-9.0
#pos(a4,
{},
{},
{platform(c).
lava(a).
lava(b).
ramp(d).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-10.0
#pos(a5,
{},
{},
{wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.82
#pos(a6,
{},
{},
{wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.84
#pos(a7,
{},
{},
{wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.885714285714286
#pos(a8,
{},
{},
{wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.014285714285714
#pos(a9,
{},
{},
{wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.149999999999999
#pos(a10,
{},
{},
{wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.5
#pos(a11,
{},
{},
{wall(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.625
#pos(a12,
{},
{},
{wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.75
#pos(a13,
{},
{},
{wall(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a14,
{},
{},
{wall(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a15,
{},
{},
{wall(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a16,
{},
{},
{platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.775082
#pos(a17,
{},
{},
{platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-7.798725
#pos(a18,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.92
#pos(a19,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.733333333333334
#pos(a20,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.853666666666667
#pos(a21,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.878
#pos(a22,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.033333333333333
#pos(a23,
{},
{},
{platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.275
#pos(a24,
{},
{},
{platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.42
#pos(a25,
{},
{},
{platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-9.666666666666666
#pos(a26,
{},
{},
{platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a27,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-3.874204890000001
#pos(a28,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-6.561
#pos(a29,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.55
#pos(a30,
{},
{},
{lava(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-4.304672100000001
#pos(a31,
{},
{},
{lava(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-6.561
#pos(a32,
{},
{},
{lava(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-7.290000000000001
#pos(a33,
{},
{},
{lava(b).
ramp(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-8.100000000000001
#pos(a34,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
ramp(f).
goal(a).
initiate(balance(d,f)).}).
%%Value was:-4.7829690000000005
#pos(a35,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
ramp(f).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-10.0
#pos(a36,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-8.3925
#pos(a37,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-9.131148148148148
#pos(a38,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-9.524642857142855
#pos(a39,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-9.0
#pos(a40,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(a,d)).}).
%%Value was:-9.0
#pos(a41,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-9.0
#pos(a42,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-10.0
#pos(a43,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-10.0
#pos(a44,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-5.4592137
#pos(a45,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-5.646646100250001
#pos(a46,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-5.70807
#pos(a47,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-6.561
#pos(a48,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-6.59745
#pos(a49,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.107750000000001
#pos(a50,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-7.317
#pos(a51,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.330500000000001
#pos(a52,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-7.35498
#pos(a53,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.53525
#pos(a54,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.695000000000001
#pos(a55,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.731633333333335
#pos(a56,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.764428571428573
#pos(a57,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.830000000000001
#pos(a58,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-7.858980000000001
#pos(a59,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-7.920000000000001
#pos(a60,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-8.100000000000001
#pos(a61,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-8.1225
#pos(a62,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-8.13
#pos(a63,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-8.280000000000001
#pos(a64,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-8.500000000000002
#pos(a65,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-8.8
#pos(a66,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-9.0
#pos(a67,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a68,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(explore(f,c)).}).
%%Value was:-8.100000000000001
#pos(a69,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.0
#pos(a70,
{},
{},
{platform(e).
lava(b).
lava(c).
lava(d).
ramp(f).
goal(a).
initiate(explore(c,e)).}).
%%Value was:-10.0
#pos(a71,
{},
{},
{lava(a).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a72,
{},
{},
{lava(a).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a73,
{},
{},
{lava(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:10.0
#pos(a74,
{},
{},
{lava(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-8.775
#pos(a75,
{},
{},
{lava(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.82
#pos(a76,
{},
{},
{lava(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-8.871428571428572
#pos(a77,
{},
{},
{lava(b).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a78,
{},
{},
{lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-9.875
#pos(a79,
{},
{},
{lava(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a80,
{},
{},
{lava(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a81,
{},
{},
{lava(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a82,
{},
{},
{lava(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a83,
{},
{},
{lava(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-10.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a5, a8).
#brave_ordering(b6@10, a5, a9).
#brave_ordering(b7@10, a5, a10).
#brave_ordering(b8@10, a5, a11).
#brave_ordering(b9@10, a5, a12).
#brave_ordering(b10@10, a5, a13).
#brave_ordering(b11@10, a5, a14).
#brave_ordering(b12@10, a5, a15).
#brave_ordering(b13@10, a16, a17).
#brave_ordering(b14@10, a16, a18).
#brave_ordering(b15@10, a16, a19).
#brave_ordering(b16@10, a16, a20).
#brave_ordering(b17@10, a16, a21).
#brave_ordering(b18@10, a16, a22).
#brave_ordering(b19@10, a16, a23).
#brave_ordering(b20@10, a16, a24).
#brave_ordering(b21@10, a16, a25).
#brave_ordering(b22@10, a16, a26).
#brave_ordering(b23@10, a27, a28).
#brave_ordering(b24@10, a27, a29).
#brave_ordering(b25@10, a30, a31).
#brave_ordering(b26@10, a30, a32).
#brave_ordering(b27@10, a30, a33).
#brave_ordering(b28@10, a34, a35).
#brave_ordering(b29@10, a36, a37).
#brave_ordering(b30@10, a36, a38).
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
#brave_ordering(b45@10, a44, a55).
#brave_ordering(b46@10, a44, a56).
#brave_ordering(b47@10, a44, a57).
#brave_ordering(b48@10, a44, a58).
#brave_ordering(b49@10, a44, a59).
#brave_ordering(b50@10, a44, a60).
#brave_ordering(b51@10, a44, a61).
#brave_ordering(b52@10, a44, a62).
#brave_ordering(b53@10, a44, a63).
#brave_ordering(b54@10, a44, a64).
#brave_ordering(b55@10, a44, a65).
#brave_ordering(b56@10, a44, a66).
#brave_ordering(b57@10, a44, a67).
#brave_ordering(b58@10, a68, a69).
#brave_ordering(b59@10, a68, a70).
#brave_ordering(b60@10, a71, a72).
#brave_ordering(b61@10, a73, a74).
#brave_ordering(b62@10, a73, a75).
#brave_ordering(b63@10, a73, a76).
#brave_ordering(b64@10, a73, a77).
#brave_ordering(b65@10, a73, a78).
#brave_ordering(b66@10, a73, a79).
#brave_ordering(b67@10, a73, a80).
#brave_ordering(b68@10, a73, a81).
#brave_ordering(b69@10, a73, a82).
#brave_ordering(b70@10, a73, a83).
