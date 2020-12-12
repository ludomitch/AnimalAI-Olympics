
present(X):-goal(X).
present(X):- visible(X).
object(X):- present(X).
occludes(X,Y) :- present(Y), visible(X), not visible(Y).
#modeo(1, initiate(rotate)).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, on(var(x),var(y))).
#modeo(1, goal(var(x))).
#modeo(1, platform(var(x))).
#modeo(1, ramp(var(x))).
#modeo(1, agent).

#weight(1).
#weight(-1).
#maxv(4).
#maxp(3).
#pos(a0,
{},
{},
{platform(b).
ramp(c).
ramp(d).
ramp(e).
goal(a).
initiate(balance(b,41)).}).
%%Value was:-6.561
#pos(a1,
{},
{},
{platform(b).
ramp(c).
ramp(d).
ramp(e).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.290000000000001
#pos(a2,
{},
{},
{platform(b).
ramp(c).
ramp(d).
ramp(e).
goal(a).
initiate(balance(e,b)).}).
%%Value was:-7.290000000000001
#pos(a3,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.44738375
#pos(a4,
{},
{},
{platform(b).
goal(a).
initiate(balance(43,a)).}).
%%Value was:-8.100000000000001
#pos(a5,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.738473913043478
#pos(a6,
{},
{},
{platform(b).
goal(a).
initiate(climb(48)).}).
%%Value was:-9.0
#pos(a7,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-9.002346153846153
#pos(a8,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-9.231599999999998
#pos(a9,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.2913125
#pos(a10,
{},
{},
{platform(b).
goal(a).
initiate(balance(42,b)).}).
%%Value was:-10.0
#pos(a11,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,55)).}).
%%Value was:-10.0
#pos(a12,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,44)).}).
%%Value was:-10.0
#pos(a13,
{},
{},
{platform(b).
goal(a).
initiate(climb(51)).}).
%%Value was:-10.0
#pos(a14,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.074000000000001
#pos(a15,
{},
{},
{ramp(b).
goal(a).
initiate(balance(40,a)).}).
%%Value was:-7.290000000000001
#pos(a16,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,12)).}).
%%Value was:-7.290000000000001
#pos(a17,
{},
{},
{ramp(b).
goal(a).
initiate(balance(53,43)).}).
%%Value was:-7.290000000000001
#pos(a18,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,1a)).}).
%%Value was:-7.290000000000001
#pos(a19,
{},
{},
{ramp(b).
goal(a).
initiate(climb(4a)).}).
%%Value was:-7.7805
#pos(a20,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.830000000000001
#pos(a21,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,1a)).}).
%%Value was:-8.100000000000001
#pos(a22,
{},
{},
{ramp(b).
goal(a).
initiate(balance(56,57)).}).
%%Value was:-8.100000000000001
#pos(a23,
{},
{},
{ramp(b).
goal(a).
initiate(climb(65)).}).
%%Value was:-8.100000000000001
#pos(a24,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.2805
#pos(a25,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.980979999999999
#pos(a26,
{},
{},
{ramp(b).
goal(a).
initiate(balance(42,b)).}).
%%Value was:-9.0
#pos(a27,
{},
{},
{ramp(b).
goal(a).
initiate(balance(47,b)).}).
%%Value was:-9.0
#pos(a28,
{},
{},
{ramp(b).
goal(a).
initiate(balance(1a,4a)).}).
%%Value was:-9.0
#pos(a29,
{},
{},
{ramp(b).
goal(a).
initiate(climb(1a)).}).
%%Value was:-9.0
#pos(a30,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-9.025
#pos(a31,
{},
{},
{ramp(b).
goal(a).
initiate(balance(42,a)).}).
%%Value was:-10.0
#pos(a32,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a0)).}).
%%Value was:-10.0
#pos(a33,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,11)).}).
%%Value was:-10.0
#pos(a34,
{},
{},
{ramp(b).
goal(a).
initiate(balance(11,a)).}).
%%Value was:-10.0
#pos(a35,
{},
{},
{ramp(b).
goal(a).
initiate(balance(41,b)).}).
%%Value was:-10.0
#pos(a36,
{},
{},
{ramp(b).
goal(a).
initiate(balance(54,77)).}).
%%Value was:-10.0
#pos(a37,
{},
{},
{ramp(b).
goal(a).
initiate(climb(49)).}).
%%Value was:-10.0
#pos(a38,
{},
{},
{ramp(b).
goal(a).
initiate(balance(13,b)).}).
%%Value was:-10.0
#pos(a39,
{},
{},
{ramp(b).
goal(a).
initiate(balance(41,42)).}).
%%Value was:-10.0
#pos(a40,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,42)).}).
%%Value was:-10.0
#pos(a41,
{},
{},
{ramp(b).
goal(a).
initiate(balance(12,b)).}).
%%Value was:-10.0
#pos(a42,
{},
{},
{ramp(b).
goal(a).
initiate(balance(4a,41)).}).
%%Value was:-10.0
#pos(a43,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,41)).}).
%%Value was:-10.0
#pos(a44,
{},
{},
{ramp(b).
goal(a).
initiate(balance(86,a)).}).
%%Value was:-10.0
#pos(a45,
{},
{},
{ramp(b).
goal(a).
initiate(balance(4a,b)).}).
%%Value was:-10.0
#pos(a46,
{},
{},
{platform(b).
platform(c).
platform(d).
ramp(e).
ramp(f).
goal(a).
initiate(balance(c,e)).}).
%%Value was:-6.561
#pos(a47,
{},
{},
{platform(b).
platform(c).
platform(d).
ramp(e).
ramp(f).
goal(a).
initiate(balance(b,e)).}).
%%Value was:-6.561
#pos(a48,
{},
{},
{platform(b).
platform(c).
platform(d).
ramp(e).
ramp(f).
goal(a).
initiate(balance(f,b)).}).
%%Value was:-6.561
#pos(a49,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-5.360337000000001
#pos(a50,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(53,a)).}).
%%Value was:-6.561
#pos(a51,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-6.806116666666667
#pos(a52,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-6.997128166666667
#pos(a53,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,52)).}).
%%Value was:-7.290000000000001
#pos(a54,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,44)).}).
%%Value was:-7.290000000000001
#pos(a55,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-7.291803333333334
#pos(a56,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-7.4925000000000015
#pos(a57,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.829470000000001
#pos(a58,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.913180000000001
#pos(a59,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.950333333333333
#pos(a60,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(62,b)).}).
%%Value was:-8.100000000000001
#pos(a61,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(40,69)).}).
%%Value was:-8.100000000000001
#pos(a62,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,43)).}).
%%Value was:-8.100000000000001
#pos(a63,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(58,c)).}).
%%Value was:-8.100000000000001
#pos(a64,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-8.199923333333333
#pos(a65,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-8.520333333333333
#pos(a66,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(65,66)).}).
%%Value was:-9.0
#pos(a67,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,66)).}).
%%Value was:-9.0
#pos(a68,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(41,b)).}).
%%Value was:-9.0
#pos(a69,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(47,a)).}).
%%Value was:-9.0
#pos(a70,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(68,52)).}).
%%Value was:-9.0
#pos(a71,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(58,48)).}).
%%Value was:-9.0
#pos(a72,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,53)).}).
%%Value was:-9.0
#pos(a73,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(44,c)).}).
%%Value was:-9.05
#pos(a74,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(45,a)).}).
%%Value was:-10.0
#pos(a75,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(56)).}).
%%Value was:-10.0
#pos(a76,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(59,63)).}).
%%Value was:-10.0
#pos(a77,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,4a)).}).
%%Value was:-10.0
#pos(a78,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,62)).}).
%%Value was:-10.0
#pos(a79,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(44,a)).}).
%%Value was:-10.0
#pos(a80,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(50,53)).}).
%%Value was:-10.0
#pos(a81,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.290000000000001
#pos(a82,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.100000000000001
#pos(a83,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(rotate).}).
%%Value was:-5.9049000000000005
#pos(a84,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(climb(a)).}).
%%Value was:-5.9049000000000005
#pos(a85,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(climb(d)).}).
%%Value was:-5.9049000000000005
#pos(a86,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-6.561
#pos(a87,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(c,4a)).}).
%%Value was:-6.561
#pos(a88,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(4a,b)).}).
%%Value was:-6.561
#pos(a89,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(4a,d)).}).
%%Value was:-6.561
#pos(a90,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(a,d)).}).
%%Value was:-7.290000000000001
#pos(a91,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(climb(4a)).}).
%%Value was:-7.290000000000001
#pos(a92,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(c,40)).}).
%%Value was:-7.290000000000001
#pos(a93,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-7.290000000000002
#pos(a94,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(4a,c)).}).
%%Value was:-7.950333333333333
#pos(a95,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(c,d)).}).
%%Value was:-8.13
#pos(a96,
{},
{},
{platform(b).
ramp(c).
ramp(d).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-10.0
#pos(a97,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-7.801875000000002
#pos(a98,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-8.777
#pos(a99,
{},
{},
{goal(a).
initiate(climb(15)).}).
%%Value was:-9.5
#pos(a100,
{},
{},
{goal(a).
initiate(balance(a,1a)).}).
%%Value was:-10.0
#pos(a101,
{},
{},
{goal(a).
initiate(balance(12,a)).}).
%%Value was:-10.0
#pos(a102,
{},
{},
{goal(a).
initiate(balance(10,a)).}).
%%Value was:-10.0
#pos(a103,
{},
{},
{goal(a).
initiate(balance(a,a0)).}).
%%Value was:-10.0
#pos(a104,
{},
{},
{goal(a).
initiate(balance(a,4a)).}).
%%Value was:-10.0
#pos(a105,
{},
{},
{platform(b).
platform(c).
ramp(d).
ramp(e).
goal(a).
initiate(balance(d,e)).}).
%%Value was:-5.9049000000000005
#pos(a106,
{},
{},
{platform(b).
platform(c).
ramp(d).
ramp(e).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-6.561
#pos(a107,
{},
{},
{platform(b).
platform(c).
ramp(d).
ramp(e).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-6.561
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a3, a4).
#brave_ordering(b3@10, a3, a5).
#brave_ordering(b4@10, a3, a6).
#brave_ordering(b5@10, a3, a7).
#brave_ordering(b6@10, a3, a8).
#brave_ordering(b7@10, a3, a9).
#brave_ordering(b8@10, a3, a10).
#brave_ordering(b9@10, a3, a11).
#brave_ordering(b10@10, a3, a12).
#brave_ordering(b11@10, a3, a13).
#brave_ordering(b12@10, a14, a15).
#brave_ordering(b13@10, a14, a16).
#brave_ordering(b14@10, a14, a17).
#brave_ordering(b15@10, a14, a18).
#brave_ordering(b16@10, a14, a19).
#brave_ordering(b17@10, a14, a20).
#brave_ordering(b18@10, a14, a21).
#brave_ordering(b19@10, a14, a22).
#brave_ordering(b20@10, a14, a23).
#brave_ordering(b21@10, a14, a24).
#brave_ordering(b22@10, a14, a25).
#brave_ordering(b23@10, a14, a26).
#brave_ordering(b24@10, a14, a27).
#brave_ordering(b25@10, a14, a28).
#brave_ordering(b26@10, a14, a29).
#brave_ordering(b27@10, a14, a30).
#brave_ordering(b28@10, a14, a31).
#brave_ordering(b29@10, a14, a32).
#brave_ordering(b30@10, a14, a33).
#brave_ordering(b31@10, a14, a34).
#brave_ordering(b32@10, a14, a35).
#brave_ordering(b33@10, a14, a36).
#brave_ordering(b34@10, a14, a37).
#brave_ordering(b35@10, a14, a38).
#brave_ordering(b36@10, a14, a39).
#brave_ordering(b37@10, a14, a40).
#brave_ordering(b38@10, a14, a41).
#brave_ordering(b39@10, a14, a42).
#brave_ordering(b40@10, a14, a43).
#brave_ordering(b41@10, a14, a44).
#brave_ordering(b42@10, a14, a45).
#brave_ordering(b43@10, a46, a47).
#brave_ordering(b44@10, a46, a48).
#brave_ordering(b45@10, a49, a50).
#brave_ordering(b46@10, a49, a51).
#brave_ordering(b47@10, a49, a52).
#brave_ordering(b48@10, a49, a53).
#brave_ordering(b49@10, a49, a54).
#brave_ordering(b50@10, a49, a55).
#brave_ordering(b51@10, a49, a56).
#brave_ordering(b52@10, a49, a57).
#brave_ordering(b53@10, a49, a58).
#brave_ordering(b54@10, a49, a59).
#brave_ordering(b55@10, a49, a60).
#brave_ordering(b56@10, a49, a61).
#brave_ordering(b57@10, a49, a62).
#brave_ordering(b58@10, a49, a63).
#brave_ordering(b59@10, a49, a64).
#brave_ordering(b60@10, a49, a65).
#brave_ordering(b61@10, a49, a66).
#brave_ordering(b62@10, a49, a67).
#brave_ordering(b63@10, a49, a68).
#brave_ordering(b64@10, a49, a69).
#brave_ordering(b65@10, a49, a70).
#brave_ordering(b66@10, a49, a71).
#brave_ordering(b67@10, a49, a72).
#brave_ordering(b68@10, a49, a73).
#brave_ordering(b69@10, a49, a74).
#brave_ordering(b70@10, a49, a75).
#brave_ordering(b71@10, a49, a76).
#brave_ordering(b72@10, a49, a77).
#brave_ordering(b73@10, a49, a78).
#brave_ordering(b74@10, a49, a79).
#brave_ordering(b75@10, a49, a80).
#brave_ordering(b76@10, a81, a82).
#brave_ordering(b77@10, a83, a84).
#brave_ordering(b78@10, a83, a85).
#brave_ordering(b79@10, a83, a86).
#brave_ordering(b80@10, a83, a87).
#brave_ordering(b81@10, a83, a88).
#brave_ordering(b82@10, a83, a89).
#brave_ordering(b83@10, a83, a90).
#brave_ordering(b84@10, a83, a91).
#brave_ordering(b85@10, a83, a92).
#brave_ordering(b86@10, a83, a93).
#brave_ordering(b87@10, a83, a94).
#brave_ordering(b88@10, a83, a95).
#brave_ordering(b89@10, a83, a96).
#brave_ordering(b90@10, a97, a98).
#brave_ordering(b91@10, a97, a99).
#brave_ordering(b92@10, a97, a100).
#brave_ordering(b93@10, a97, a101).
#brave_ordering(b94@10, a97, a102).
#brave_ordering(b95@10, a97, a103).
#brave_ordering(b96@10, a97, a104).
#brave_ordering(b97@10, a105, a106).
#brave_ordering(b98@10, a105, a107).
