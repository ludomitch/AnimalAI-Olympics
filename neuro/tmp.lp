
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
goal(a).
initiate(climb(b)).}).
%%Value was:-4.35942
#pos(a1,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(rotate).}).
%%Value was:-5.9850900000000005
#pos(a2,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-6.357042000000002
#pos(a3,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,53)).}).
%%Value was:-6.561
#pos(a4,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(c)).}).
%%Value was:-6.61095
#pos(a5,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,c)).}).
%%Value was:-6.757635
#pos(a6,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-6.8841
#pos(a7,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,a)).}).
%%Value was:-7.102733333333334
#pos(a8,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(a,c)).}).
%%Value was:-7.243443769230771
#pos(a9,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(43)).}).
%%Value was:-7.290000000000001
#pos(a10,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(51,c)).}).
%%Value was:-7.290000000000001
#pos(a11,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.507482727272728
#pos(a12,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,b)).}).
%%Value was:-7.670983625
#pos(a13,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(46,b)).}).
%%Value was:-8.100000000000001
#pos(a14,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(40)).}).
%%Value was:-8.100000000000001
#pos(a15,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(55,a)).}).
%%Value was:-8.100000000000001
#pos(a16,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(49,54)).}).
%%Value was:-8.100000000000001
#pos(a17,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(41,b)).}).
%%Value was:-8.100000000000001
#pos(a18,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(c,72)).}).
%%Value was:-9.0
#pos(a19,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,81)).}).
%%Value was:-10.0
#pos(a20,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(climb(78)).}).
%%Value was:-10.0
#pos(a21,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(46,62)).}).
%%Value was:-10.0
#pos(a22,
{},
{},
{platform(b).
ramp(c).
goal(a).
initiate(balance(b,64)).}).
%%Value was:-10.0
#pos(a23,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(b,55)).}).
%%Value was:10.0
#pos(a24,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(55,b)).}).
%%Value was:9.0
#pos(a25,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-5.9049000000000005
#pos(a26,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(58,b)).}).
%%Value was:-6.561
#pos(a27,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-7.290000000000001
#pos(a28,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-7.617
#pos(a29,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-8.100000000000001
#pos(a30,
{},
{},
{on(agent,platform).
platform(b).
goal(a).
initiate(climb(60)).}).
%%Value was:-9.0
#pos(a31,
{},
{},
{platform(b).
goal(a).
initiate(balance(4a,b)).}).
%%Value was:-6.561
#pos(a32,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,41)).}).
%%Value was:-6.561
#pos(a33,
{},
{},
{platform(b).
goal(a).
initiate(balance(42,b)).}).
%%Value was:-6.561
#pos(a34,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,41)).}).
%%Value was:-7.290000000000001
#pos(a35,
{},
{},
{platform(b).
goal(a).
initiate(balance(41,a)).}).
%%Value was:-7.290000000000001
#pos(a36,
{},
{},
{platform(b).
goal(a).
initiate(rotate).}).
%%Value was:-7.945041724137931
#pos(a37,
{},
{},
{platform(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.954647058823529
#pos(a38,
{},
{},
{platform(b).
goal(a).
initiate(balance(44,a)).}).
%%Value was:-8.100000000000001
#pos(a39,
{},
{},
{platform(b).
goal(a).
initiate(balance(41,b)).}).
%%Value was:-8.100000000000001
#pos(a40,
{},
{},
{platform(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.632666666666667
#pos(a41,
{},
{},
{platform(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-8.823681818181818
#pos(a42,
{},
{},
{platform(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-8.924079999999998
#pos(a43,
{},
{},
{platform(b).
goal(a).
initiate(climb(43)).}).
%%Value was:-9.0
#pos(a44,
{},
{},
{platform(b).
goal(a).
initiate(balance(4a,a)).}).
%%Value was:-9.0
#pos(a45,
{},
{},
{platform(b).
goal(a).
initiate(balance(48,a)).}).
%%Value was:-9.0
#pos(a46,
{},
{},
{platform(b).
goal(a).
initiate(balance(40,b)).}).
%%Value was:-9.0
#pos(a47,
{},
{},
{platform(b).
goal(a).
initiate(balance(46,b)).}).
%%Value was:-10.0
#pos(a48,
{},
{},
{platform(b).
goal(a).
initiate(climb(70)).}).
%%Value was:-10.0
#pos(a49,
{},
{},
{platform(b).
goal(a).
initiate(climb(49)).}).
%%Value was:-10.0
#pos(a50,
{},
{},
{goal(a).
initiate(rotate).}).
%%Value was:-7.943915999999999
#pos(a51,
{},
{},
{goal(a).
initiate(balance(a,12)).}).
%%Value was:-8.100000000000001
#pos(a52,
{},
{},
{goal(a).
initiate(climb(a)).}).
%%Value was:-8.653200588235293
#pos(a53,
{},
{},
{ramp(b).
goal(a).
initiate(climb(b)).}).
%%Value was:-3.3333333333333335
#pos(a54,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,b)).}).
%%Value was:-5.582000000000001
#pos(a55,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,45)).}).
%%Value was:-5.9049000000000005
#pos(a56,
{},
{},
{ramp(b).
goal(a).
initiate(balance(58,a)).}).
%%Value was:-6.561
#pos(a57,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,43)).}).
%%Value was:-7.290000000000001
#pos(a58,
{},
{},
{ramp(b).
goal(a).
initiate(climb(a)).}).
%%Value was:-7.603
#pos(a59,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,a)).}).
%%Value was:-8.100000000000001
#pos(a60,
{},
{},
{ramp(b).
goal(a).
initiate(balance(43,b)).}).
%%Value was:-8.100000000000001
#pos(a61,
{},
{},
{ramp(b).
goal(a).
initiate(rotate).}).
%%Value was:-8.763333333333334
#pos(a62,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,41)).}).
%%Value was:-9.0
#pos(a63,
{},
{},
{ramp(b).
goal(a).
initiate(balance(a,54)).}).
%%Value was:-10.0
#pos(a64,
{},
{},
{ramp(b).
goal(a).
initiate(balance(47,b)).}).
%%Value was:-10.0
#pos(a65,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,62)).}).
%%Value was:-10.0
#pos(a66,
{},
{},
{ramp(b).
goal(a).
initiate(balance(b,59)).}).
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
#brave_ordering(b22@10, a23, a24).
#brave_ordering(b23@10, a23, a25).
#brave_ordering(b24@10, a23, a26).
#brave_ordering(b25@10, a23, a27).
#brave_ordering(b26@10, a23, a28).
#brave_ordering(b27@10, a23, a29).
#brave_ordering(b28@10, a23, a30).
#brave_ordering(b29@10, a31, a32).
#brave_ordering(b30@10, a31, a33).
#brave_ordering(b31@10, a31, a34).
#brave_ordering(b32@10, a31, a35).
#brave_ordering(b33@10, a31, a36).
#brave_ordering(b34@10, a31, a37).
#brave_ordering(b35@10, a31, a38).
#brave_ordering(b36@10, a31, a39).
#brave_ordering(b37@10, a31, a40).
#brave_ordering(b38@10, a31, a41).
#brave_ordering(b39@10, a31, a42).
#brave_ordering(b40@10, a31, a43).
#brave_ordering(b41@10, a31, a44).
#brave_ordering(b42@10, a31, a45).
#brave_ordering(b43@10, a31, a46).
#brave_ordering(b44@10, a31, a47).
#brave_ordering(b45@10, a31, a48).
#brave_ordering(b46@10, a31, a49).
#brave_ordering(b47@10, a50, a51).
#brave_ordering(b48@10, a50, a52).
#brave_ordering(b49@10, a53, a54).
#brave_ordering(b50@10, a53, a55).
#brave_ordering(b51@10, a53, a56).
#brave_ordering(b52@10, a53, a57).
#brave_ordering(b53@10, a53, a58).
#brave_ordering(b54@10, a53, a59).
#brave_ordering(b55@10, a53, a60).
#brave_ordering(b56@10, a53, a61).
#brave_ordering(b57@10, a53, a62).
#brave_ordering(b58@10, a53, a63).
#brave_ordering(b59@10, a53, a64).
#brave_ordering(b60@10, a53, a65).
#brave_ordering(b61@10, a53, a66).
