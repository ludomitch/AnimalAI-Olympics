
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
initiate(interact(a)).}).
%%Value was:0.0
#pos(a2,
{},
{},
{lava(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.0
#pos(a3,
{},
{},
{lava(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.0
#pos(a4,
{},
{},
{lava(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a5,
{},
{},
{lava(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a6,
{},
{},
{lava(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-10.0
#pos(a7,
{},
{},
{lava(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a8,
{},
{},
{lava(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a9,
{},
{},
{on(agent,c).
platform(c).
lava(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-6.561
#pos(a10,
{},
{},
{on(agent,c).
platform(c).
lava(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.290000000000001
#pos(a11,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.967499999999999
#pos(a12,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.1225
#pos(a13,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.634966666666667
#pos(a14,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.645
#pos(a15,
{},
{},
{platform(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-9.016666666666667
#pos(a16,
{},
{},
{platform(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-9.025
#pos(a17,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.033333333333333
#pos(a18,
{},
{},
{platform(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.5
#pos(a19,
{},
{},
{platform(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.5
#pos(a20,
{},
{},
{platform(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-9.5
#pos(a21,
{},
{},
{platform(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a22,
{},
{},
{wall(b).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-7.776225000000001
#pos(a23,
{},
{},
{wall(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-7.97525
#pos(a24,
{},
{},
{wall(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.3322
#pos(a25,
{},
{},
{wall(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.645
#pos(a26,
{},
{},
{wall(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.8225
#pos(a27,
{},
{},
{wall(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.0
#pos(a28,
{},
{},
{wall(b).
goal(a).
initiate(interact(a)).}).
%%Value was:-9.5
#pos(a29,
{},
{},
{wall(b).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:-10.0
#pos(a30,
{},
{},
{wall(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a31,
{},
{},
{wall(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a32,
{},
{},
{wall(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a33,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-4.304672100000001
#pos(a34,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-4.7829690000000005
#pos(a35,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-5.161194247500001
#pos(a36,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-5.334093
#pos(a37,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,a)).}).
%%Value was:-5.388392200500001
#pos(a38,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-5.9049000000000005
#pos(a39,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:-5.9049000000000005
#pos(a40,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-6.2493525000000005
#pos(a41,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(a)).}).
%%Value was:-6.561
#pos(a42,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-6.724323000000001
#pos(a43,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.9255
#pos(a44,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-6.9639750000000005
#pos(a45,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.317
#pos(a46,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(c)).}).
%%Value was:-7.330500000000001
#pos(a47,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-7.657205
#pos(a48,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-8.100000000000001
#pos(a49,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.100000000000001
#pos(a50,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(interact(b)).}).
%%Value was:-8.100000000000001
#pos(a51,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,a)).}).
%%Value was:-8.3475
#pos(a52,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-9.0
#pos(a53,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-9.05
#pos(a54,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(avoid(c,b)).}).
%%Value was:-10.0
#pos(a55,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(interact(a)).}).
%%Value was:-7.290000000000001
#pos(a56,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.290000000000001
#pos(a57,
{},
{},
{platform(c).
lava(b).
ramp(d).
goal(a).
initiate(balance(b,d)).}).
%%Value was:-8.100000000000001
#pos(a58,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(b,a)).}).
%%Value was:10.0
#pos(a59,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(b,a)).}).
%%Value was:9.0
#pos(a60,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:0.4499999999999993
#pos(a61,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(c,b)).}).
%%Value was:-8.100000000000001
#pos(a62,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-9.0
#pos(a63,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(rotate).}).
%%Value was:-9.0
#pos(a64,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-9.0
#pos(a65,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-9.666666666666666
#pos(a66,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-10.0
#pos(a67,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-10.0
#pos(a68,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-10.0
#pos(a69,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-10.0
#pos(a70,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-10.0
#pos(a71,
{},
{},
{lava(b).
lava(c).
goal(a).
initiate(avoid(b,c)).}).
%%Value was:-10.0
#pos(a72,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-6.319333333333333
#pos(a73,
{},
{},
{goal(a).
initiate(interact(a)).}).
%%Value was:-7.100489999999999
#pos(a74,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-9.60806923076923
#pos(a75,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-9.0
#pos(a76,
{},
{},
{platform(d).
lava(b).
lava(c).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-9.0
#pos(a77,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-10.0
#pos(a78,
{},
{},
{lava(b).
lava(c).
lava(d).
lava(e).
goal(a).
initiate(avoid(d,c)).}).
%%Value was:-10.0
#pos(a79,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(climb(e)).}).
%%Value was:-6.561
#pos(a80,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(avoid(a,d)).}).
%%Value was:-9.0
#pos(a81,
{},
{},
{platform(d).
lava(b).
lava(c).
ramp(e).
goal(a).
initiate(balance(e,b)).}).
%%Value was:-9.0
#pos(a82,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(c,d)).}).
%%Value was:10.0
#pos(a83,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(b,d)).}).
%%Value was:7.290000000000001
#pos(a84,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(explore(a,c)).}).
%%Value was:-8.55
#pos(a85,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(explore(d,a)).}).
%%Value was:-9.0
#pos(a86,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(interact(c)).}).
%%Value was:-9.0
#pos(a87,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(explore(b,c)).}).
%%Value was:-9.0
#pos(a88,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(a,c)).}).
%%Value was:-10.0
#pos(a89,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-10.0
#pos(a90,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(climb(b)).}).
%%Value was:-10.0
#pos(a91,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(a,d)).}).
%%Value was:-10.0
#pos(a92,
{},
{},
{lava(b).
lava(c).
lava(d).
goal(a).
initiate(avoid(d,b)).}).
%%Value was:-10.0
#pos(a93,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-5.3144100000000005
#pos(a94,
{},
{},
{ramp(b).
goal(a).
initiate(explore(a,b)).}).
%%Value was:-6.561
#pos(a95,
{},
{},
{ramp(b).
goal(a).
initiate(interact(b)).}).
%%Value was:-7.290000000000001
#pos(a96,
{},
{},
{ramp(b).
goal(a).
initiate(avoid(a,b)).}).
%%Value was:-9.0
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a0, a6).
#brave_ordering(b6@10, a0, a7).
#brave_ordering(b7@10, a0, a8).
#brave_ordering(b8@10, a9, a10).
#brave_ordering(b9@10, a11, a12).
#brave_ordering(b10@10, a11, a13).
#brave_ordering(b11@10, a11, a14).
#brave_ordering(b12@10, a11, a15).
#brave_ordering(b13@10, a11, a16).
#brave_ordering(b14@10, a11, a17).
#brave_ordering(b15@10, a11, a18).
#brave_ordering(b16@10, a11, a19).
#brave_ordering(b17@10, a11, a20).
#brave_ordering(b18@10, a11, a21).
#brave_ordering(b19@10, a22, a23).
#brave_ordering(b20@10, a22, a24).
#brave_ordering(b21@10, a22, a25).
#brave_ordering(b22@10, a22, a26).
#brave_ordering(b23@10, a22, a27).
#brave_ordering(b24@10, a22, a28).
#brave_ordering(b25@10, a22, a29).
#brave_ordering(b26@10, a22, a30).
#brave_ordering(b27@10, a22, a31).
#brave_ordering(b28@10, a22, a32).
#brave_ordering(b29@10, a33, a34).
#brave_ordering(b30@10, a33, a35).
#brave_ordering(b31@10, a33, a36).
#brave_ordering(b32@10, a33, a37).
#brave_ordering(b33@10, a33, a38).
#brave_ordering(b34@10, a33, a39).
#brave_ordering(b35@10, a33, a40).
#brave_ordering(b36@10, a33, a41).
#brave_ordering(b37@10, a33, a42).
#brave_ordering(b38@10, a33, a43).
#brave_ordering(b39@10, a33, a44).
#brave_ordering(b40@10, a33, a45).
#brave_ordering(b41@10, a33, a46).
#brave_ordering(b42@10, a33, a47).
#brave_ordering(b43@10, a33, a48).
#brave_ordering(b44@10, a33, a49).
#brave_ordering(b45@10, a33, a50).
#brave_ordering(b46@10, a33, a51).
#brave_ordering(b47@10, a33, a52).
#brave_ordering(b48@10, a33, a53).
#brave_ordering(b49@10, a33, a54).
#brave_ordering(b50@10, a55, a56).
#brave_ordering(b51@10, a55, a57).
#brave_ordering(b52@10, a58, a59).
#brave_ordering(b53@10, a58, a60).
#brave_ordering(b54@10, a58, a61).
#brave_ordering(b55@10, a58, a62).
#brave_ordering(b56@10, a58, a63).
#brave_ordering(b57@10, a58, a64).
#brave_ordering(b58@10, a58, a65).
#brave_ordering(b59@10, a58, a66).
#brave_ordering(b60@10, a58, a67).
#brave_ordering(b61@10, a58, a68).
#brave_ordering(b62@10, a58, a69).
#brave_ordering(b63@10, a58, a70).
#brave_ordering(b64@10, a58, a71).
#brave_ordering(b65@10, a72, a73).
#brave_ordering(b66@10, a72, a74).
#brave_ordering(b67@10, a75, a76).
#brave_ordering(b68@10, a77, a78).
#brave_ordering(b69@10, a79, a80).
#brave_ordering(b70@10, a79, a81).
#brave_ordering(b71@10, a82, a83).
#brave_ordering(b72@10, a82, a84).
#brave_ordering(b73@10, a82, a85).
#brave_ordering(b74@10, a82, a86).
#brave_ordering(b75@10, a82, a87).
#brave_ordering(b76@10, a82, a88).
#brave_ordering(b77@10, a82, a89).
#brave_ordering(b78@10, a82, a90).
#brave_ordering(b79@10, a82, a91).
#brave_ordering(b80@10, a82, a92).
#brave_ordering(b81@10, a93, a94).
#brave_ordering(b82@10, a93, a95).
#brave_ordering(b83@10, a93, a96).
