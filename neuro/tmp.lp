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
#modeo(1, vwall, (positive)).
#modeo(1, vplatform, (positive)).
#modeo(1, vgoal, (positive)).
#modeo(1, vlava, (positive)).
#modeo(1, vramp, (positive)).
#modeo(1, vgoal1, (positive)).

#weight(-1).
#maxv(4).
#maxp(9).
#bias(":- #count { X: weak_body(initiate(X)) } != 1.").

#pos(a0,
{},
{},
{initiate(drop(a)).
more_goals(a).
on(agent,b).
vgoal1.
vplatform.}).
%%Value was:83.89704163526473
#pos(a1,
{},
{},
{initiate(collect).
more_goals(a).
on(agent,b).
vgoal1.
vplatform.}).
%%Value was:57.2
#pos(a2,
{},
{},
{initiate(balance(a,b)).
more_goals(c).
on(agent,a).
vgoal1.
vplatform.}).
%%Value was:33.69172999999999
#pos(a3,
{},
{},
{initiate(rotate).
more_goals(a).
on(agent,b).
vgoal1.
vplatform.}).
%%Value was:9.852027500000002
#pos(a4,
{},
{},
{initiate(interact(a)).
more_goals(b).
on(agent,c).
vgoal1.
vplatform.}).
%%Value was:-0.9077441860465122
#pos(a5,
{},
{},
{initiate(drop(a)).
more_goals(b).
on(agent,c).
vgoal1.
vplatform.}).
%%Value was:-7.966953488571429
#pos(a6,
{},
{},
{initiate(balance(a,b)).
on(agent,a).
vgoal.
vplatform.
vramp.}).
%%Value was:74.0
#pos(a7,
{},
{},
{initiate(climb(a)).
on(agent,b).
vgoal.
vplatform.
vramp.}).
%%Value was:-10.0
#pos(a8,
{},
{},
{initiate(interact(a)).
on(agent,b).
vgoal.
vplatform.
vramp.}).
%%Value was:-10.0
#pos(a9,
{},
{},
{initiate(rotate).
on(agent,a).
vgoal.
vplatform.
vramp.}).
%%Value was:-10.0
#pos(a10,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).
vwall.}).
%%Value was:9.587171428571434
#pos(a11,
{},
{},
{initiate(rotate).
occludes(a,b).
vwall.}).
%%Value was:-1.9806325301204777
#pos(a12,
{},
{},
{initiate(interact(a)).
occludes(b,a).
vwall.}).
%%Value was:-4.22481927710843
#pos(a13,
{},
{},
{initiate(observe).
occludes(a,b).
vwall.}).
%%Value was:-8.302105263157896
#pos(a14,
{},
{},
{initiate(collect).
vgoal1.
vplatform.}).
%%Value was:42.5
#pos(a15,
{},
{},
{initiate(rotate).
vgoal1.
vplatform.}).
%%Value was:-7.157205
#pos(a16,
{},
{},
{initiate(interact(a)).
vgoal1.
vplatform.}).
%%Value was:-8.726225
#pos(a17,
{},
{},
{initiate(balance(a,b)).
vgoal1.
vplatform.}).
%%Value was:-9.666666666666666
#pos(a18,
{},
{},
{initiate(collect).
more_goals(a).
vgoal1.
vplatform.}).
%%Value was:172.0
#pos(a19,
{},
{},
{initiate(rotate).
more_goals(a).
vgoal1.
vplatform.}).
%%Value was:28.900837259999996
#pos(a20,
{},
{},
{initiate(balance(a,b)).
more_goals(c).
vgoal1.
vplatform.}).
%%Value was:2.0241176470588234
#pos(a21,
{},
{},
{initiate(interact(a)).
more_goals(b).
vgoal1.
vplatform.}).
%%Value was:-8.68205
#pos(a22,
{},
{},
{initiate(interact(a)).
vgoal.}).
%%Value was:200.0
#pos(a23,
{},
{},
{initiate(rotate).
vgoal.}).
%%Value was:67.40037037037038
#pos(a24,
{},
{},
{initiate(observe).
vgoal.}).
%%Value was:-9.033333333333333
#pos(a25,
{},
{},
{initiate(drop(a)).
on(agent,b).
vplatform.}).
%%Value was:7.173
#pos(a26,
{},
{},
{initiate(balance(a,b)).
on(agent,a).
vplatform.}).
%%Value was:4.2
#pos(a27,
{},
{},
{initiate(rotate).
on(agent,a).
vplatform.}).
%%Value was:-6.272853658536586
#pos(a28,
{},
{},
{initiate(observe).
on(agent,a).
vplatform.}).
%%Value was:-8.55
#pos(a29,
{},
{},
{initiate(interact(a)).
on(agent,b).
vplatform.}).
%%Value was:-9.869748427672956
#pos(a30,
{},
{},
{initiate(observe).
moving.
on(agent,a).
vgoal.
vlava.
vplatform.
vwall.}).
%%Value was:1.8919524193548374
#pos(a31,
{},
{},
{initiate(balance(a,b)).
moving.
on(agent,a).
vgoal.
vlava.
vplatform.
vwall.}).
%%Value was:-3.501805263157896
#pos(a32,
{},
{},
{initiate(interact(a)).
moving.
on(agent,b).
vgoal.
vlava.
vplatform.
vwall.}).
%%Value was:-4.430733333333334
#pos(a33,
{},
{},
{initiate(rotate).
moving.
on(agent,a).
vgoal.
vlava.
vplatform.
vwall.}).
%%Value was:-4.725960576923075
#pos(a34,
{},
{},
{initiate(explore(a,b)).
moving.
on(agent,c).
vgoal.
vlava.
vplatform.
vwall.}).
%%Value was:-4.841353125
#pos(a35,
{},
{},
{initiate(drop(a)).
moving.
on(agent,b).
vgoal.
vlava.
vplatform.
vwall.}).
%%Value was:-6.188019827586204
#pos(a36,
{},
{},
{initiate(avoid(a,b)).
moving.
on(agent,c).
vgoal.
vlava.
vplatform.
vwall.}).
%%Value was:-6.6899756756756705
#pos(a37,
{},
{},
{initiate(avoid(a,b)).
vgoal.
vlava.
vwall.}).
%%Value was:53.333333333333336
#pos(a38,
{},
{},
{initiate(explore(a,b)).
vgoal.
vlava.
vwall.}).
%%Value was:22.847826086956523
#pos(a39,
{},
{},
{initiate(interact(a)).
vgoal.
vlava.
vwall.}).
%%Value was:13.866666666666667
#pos(a40,
{},
{},
{initiate(rotate).
vgoal.
vlava.
vwall.}).
%%Value was:12.569999999999999
#pos(a41,
{},
{},
{initiate(observe).
vgoal.
vlava.
vwall.}).
%%Value was:-0.8829999999999998
#pos(a42,
{},
{},
{initiate(avoid(a,a)).
vgoal.
vlava.
vwall.}).
%%Value was:-8.893333333333333
#pos(a43,
{},
{},
{bigger(a,b).
initiate(interact(a)).
vgoal.}).
%%Value was:200.0
#pos(a44,
{},
{},
{bigger(a,b).
initiate(rotate).
vgoal.}).
%%Value was:-10.0
#pos(a45,
{},
{},
{bigger(a,b).
initiate(drop(c)).
vgoal.}).
%%Value was:-10.0
#pos(a46,
{},
{},
{bigger(a,b).
initiate(interact(b)).
vgoal.}).
%%Value was:-10.0
#pos(a47,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
occludes(a,b).
occludes_more(a,c).
on(agent,d).
vplatform.
vwall.}).
%%Value was:92.80227272727286
#pos(a48,
{},
{},
{initiate(rotate).
occludes(a,b).
occludes(c,b).
occludes_more(c,a).
on(agent,d).
vplatform.
vwall.}).
%%Value was:-3.3905362776025343
#pos(a49,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
occludes(d,b).
occludes_more(d,c).
on(agent,e).
vplatform.
vwall.}).
%%Value was:-5.341522491349462
#pos(a50,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).
occludes(c,b).
occludes_more(c,a).
on(agent,d).
vplatform.
vwall.}).
%%Value was:-8.488817891373772
#pos(a51,
{},
{},
{initiate(balance(a,b)).
occludes(c,b).
occludes(d,b).
occludes_more(d,c).
on(agent,a).
vplatform.
vwall.}).
%%Value was:-8.49712460063895
#pos(a52,
{},
{},
{initiate(interact(a)).
occludes(b,a).
occludes(c,a).
occludes_more(c,b).
on(agent,d).
vplatform.
vwall.}).
%%Value was:-8.719838056680151
#pos(a53,
{},
{},
{initiate(avoid(a,b)).
vgoal.
vlava.}).
%%Value was:192.0803787878788
#pos(a54,
{},
{},
{initiate(rotate).
vgoal.
vlava.}).
%%Value was:48.95307692307692
#pos(a55,
{},
{},
{initiate(interact(a)).
vgoal.
vlava.}).
%%Value was:-5.787333333333333
#pos(a56,
{},
{},
{initiate(observe).
vgoal.
vlava.}).
%%Value was:-8.898333333333333
#pos(a57,
{},
{},
{initiate(avoid(a,a)).
vgoal.
vlava.}).
%%Value was:-10.0
#pos(a58,
{},
{},
{initiate(collect).
more_goals(a).
vgoal1.}).
%%Value was:200.0
#pos(a59,
{},
{},
{initiate(rotate).
more_goals(a).
vgoal1.}).
%%Value was:26.82943591909091
#pos(a60,
{},
{},
{initiate(interact(a)).
more_goals(b).
vgoal1.}).
%%Value was:-8.627142857142857
#pos(a61,
{},
{},
{initiate(rotate).
vgoal1.}).
%%Value was:2.6352794999999993
#pos(a62,
{},
{},
{initiate(collect).
vgoal1.}).
%%Value was:-1.6
#pos(a63,
{},
{},
{initiate(interact(a)).
vgoal1.}).
%%Value was:-9.245315789473684
#pos(a64,
{},
{},
{initiate(climb(a)).
vgoal.
vplatform.
vramp.}).
%%Value was:6.178922345483404
#pos(a65,
{},
{},
{initiate(balance(a,b)).
vgoal.
vplatform.
vramp.}).
%%Value was:-7.99062068965523
#pos(a66,
{},
{},
{initiate(rotate).
vgoal.
vplatform.
vramp.}).
%%Value was:-8.30374592833878
#pos(a67,
{},
{},
{initiate(interact(a)).
vgoal.
vplatform.
vramp.}).
%%Value was:-8.654153354632603
#pos(a68,
{},
{},
{initiate(balance(a,b)).
on(agent,a).
vgoal.
vplatform.}).
%%Value was:37.593525179856115
#pos(a69,
{},
{},
{initiate(rotate).
on(agent,a).
vgoal.
vplatform.}).
%%Value was:5.775167785234899
#pos(a70,
{},
{},
{initiate(interact(a)).
on(agent,b).
vgoal.
vplatform.}).
%%Value was:-7.390879478827362
#pos(a71,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).
on(agent,c).
vlava.
vplatform.
vwall.}).
%%Value was:44.361258064516136
#pos(a72,
{},
{},
{initiate(observe).
occludes(a,b).
on(agent,c).
vlava.
vplatform.
vwall.}).
%%Value was:9.853999999999997
#pos(a73,
{},
{},
{initiate(interact(a)).
occludes(b,a).
on(agent,c).
vlava.
vplatform.
vwall.}).
%%Value was:0.3547777777777783
#pos(a74,
{},
{},
{initiate(rotate).
occludes(a,b).
on(agent,c).
vlava.
vplatform.
vwall.}).
%%Value was:0.1787727272727263
#pos(a75,
{},
{},
{initiate(drop(a)).
occludes(b,c).
on(agent,d).
vlava.
vplatform.
vwall.}).
%%Value was:-7.525421874999998
#pos(a76,
{},
{},
{initiate(balance(a,b)).
occludes(c,b).
on(agent,a).
vlava.
vplatform.
vwall.}).
%%Value was:-8.01474193548387
#pos(a77,
{},
{},
{initiate(avoid(a,b)).
occludes(c,b).
on(agent,d).
vlava.
vplatform.
vwall.}).
%%Value was:-8.633341463414636
#pos(a78,
{},
{},
{initiate(interact(a)).
vgoal.
vwall.}).
%%Value was:194.51865671641792
#pos(a79,
{},
{},
{initiate(explore(a,b)).
vgoal.
vwall.}).
%%Value was:37.67588495575218
#pos(a80,
{},
{},
{initiate(rotate).
vgoal.
vwall.}).
%%Value was:30.68903361344538
#pos(a81,
{},
{},
{initiate(observe).
vgoal.
vwall.}).
%%Value was:-8.726428571428572
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a6, a7).
#brave_ordering(b6@10, a6, a8).
#brave_ordering(b7@10, a6, a9).
#brave_ordering(b8@10, a10, a11).
#brave_ordering(b9@10, a10, a12).
#brave_ordering(b10@10, a10, a13).
#brave_ordering(b11@10, a14, a15).
#brave_ordering(b12@10, a14, a16).
#brave_ordering(b13@10, a14, a17).
#brave_ordering(b14@10, a18, a19).
#brave_ordering(b15@10, a18, a20).
#brave_ordering(b16@10, a18, a21).
#brave_ordering(b17@10, a22, a23).
#brave_ordering(b18@10, a22, a24).
#brave_ordering(b19@10, a25, a26).
#brave_ordering(b20@10, a25, a27).
#brave_ordering(b21@10, a25, a28).
#brave_ordering(b22@10, a25, a29).
#brave_ordering(b23@10, a30, a31).
#brave_ordering(b24@10, a30, a32).
#brave_ordering(b25@10, a30, a33).
#brave_ordering(b26@10, a30, a34).
#brave_ordering(b27@10, a30, a35).
#brave_ordering(b28@10, a30, a36).
#brave_ordering(b29@10, a37, a38).
#brave_ordering(b30@10, a37, a39).
#brave_ordering(b31@10, a37, a40).
#brave_ordering(b32@10, a37, a41).
#brave_ordering(b33@10, a37, a42).
#brave_ordering(b34@10, a43, a44).
#brave_ordering(b35@10, a43, a45).
#brave_ordering(b36@10, a43, a46).
#brave_ordering(b37@10, a47, a48).
#brave_ordering(b38@10, a47, a49).
#brave_ordering(b39@10, a47, a50).
#brave_ordering(b40@10, a47, a51).
#brave_ordering(b41@10, a47, a52).
#brave_ordering(b42@10, a53, a54).
#brave_ordering(b43@10, a53, a55).
#brave_ordering(b44@10, a53, a56).
#brave_ordering(b45@10, a53, a57).
#brave_ordering(b46@10, a58, a59).
#brave_ordering(b47@10, a58, a60).
#brave_ordering(b48@10, a61, a62).
#brave_ordering(b49@10, a61, a63).
#brave_ordering(b50@10, a64, a65).
#brave_ordering(b51@10, a64, a66).
#brave_ordering(b52@10, a64, a67).
#brave_ordering(b53@10, a68, a69).
#brave_ordering(b54@10, a68, a70).
#brave_ordering(b55@10, a71, a72).
#brave_ordering(b56@10, a71, a73).
#brave_ordering(b57@10, a71, a74).
#brave_ordering(b58@10, a71, a75).
#brave_ordering(b59@10, a71, a76).
#brave_ordering(b60@10, a71, a77).
#brave_ordering(b61@10, a78, a79).
#brave_ordering(b62@10, a78, a80).
#brave_ordering(b63@10, a78, a81).
