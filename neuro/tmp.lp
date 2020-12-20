#modeo(1, initiate(observe)).
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(collect(var(x)))).
#modeo(1, initiate(explore(var(x),var(y)))).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, initiate(avoid(var(x),var(y)))).
#modeo(1, initiate(drop(var(x)))).
#modeo(1, on(agent, var(x))).
#modeo(1, occludes(var(x),var(y))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, bigger(var(x),var(y))).
#modeo(1, more_goals(var(x))).
#modeo(1, moving).

#weight(-1).
#maxv(3).
#maxp(8).
#pos(a0,
{},
{},
{initiate(avoid(a,b)).}).
%%Value was:152.98872727272732
#pos(a1,
{},
{},
{initiate(explore(a,b)).}).
%%Value was:34.69089147286818
#pos(a2,
{},
{},
{initiate(interact(a)).}).
%%Value was:15.800098120300863
#pos(a3,
{},
{},
{initiate(collect).}).
%%Value was:4.482758620689655
#pos(a4,
{},
{},
{initiate(climb(a)).}).
%%Value was:3.9453678474114766
#pos(a5,
{},
{},
{}).
%%Value was:1.0229379312608395
#pos(a6,
{},
{},
{initiate(observe).}).
%%Value was:-7.3203894297635586
#pos(a7,
{},
{},
{initiate(balance(a,b)).}).
%%Value was:-8.681022121015072
#pos(a8,
{},
{},
{initiate(avoid(a,a)).}).
%%Value was:-9.13391304347826
#pos(a9,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).}).
%%Value was:2.4412136752136795
#pos(a10,
{},
{},
{occludes(a,b).}).
%%Value was:-4.9026774744027195
#pos(a11,
{},
{},
{initiate(interact(a)).
occludes(b,a).}).
%%Value was:-6.095667286245346
#pos(a12,
{},
{},
{initiate(avoid(a,b)).
occludes(c,b).}).
%%Value was:-8.19902298850575
#pos(a13,
{},
{},
{initiate(observe).
occludes(a,b).}).
%%Value was:-8.405611111111101
#pos(a14,
{},
{},
{initiate(balance(a,b)).
occludes(c,b).}).
%%Value was:-8.98298739495797
#pos(a15,
{},
{},
{initiate(drop(left)).
more_goals(left).
on(agent,a).}).
%%Value was:86.68483077572728
#pos(a16,
{},
{},
{initiate(collect).
more_goals(left).
on(agent,a).}).
%%Value was:57.2
#pos(a17,
{},
{},
{initiate(balance(a,b)).
more_goals(left).
on(agent,a).}).
%%Value was:33.69172999999999
#pos(a18,
{},
{},
{more_goals(left).
on(agent,a).}).
%%Value was:9.852027500000002
#pos(a19,
{},
{},
{initiate(interact(a)).
more_goals(left).
on(agent,b).}).
%%Value was:-0.9077441860465122
#pos(a20,
{},
{},
{initiate(drop(right)).
more_goals(left).
on(agent,a).}).
%%Value was:-7.966953488571429
#pos(a21,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
occludes(a,b).
occludes_more(a,c).
on(agent,d).}).
%%Value was:92.80227272727286
#pos(a22,
{},
{},
{occludes(a,b).
occludes(c,b).
occludes_more(c,a).
on(agent,d).}).
%%Value was:-3.3905362776025343
#pos(a23,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
occludes(d,b).
occludes_more(d,c).
on(agent,e).}).
%%Value was:-5.341522491349462
#pos(a24,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).
occludes(c,b).
occludes_more(c,a).
on(agent,d).}).
%%Value was:-8.488817891373772
#pos(a25,
{},
{},
{initiate(balance(a,b)).
occludes(c,b).
occludes(d,b).
occludes_more(d,c).
on(agent,a).}).
%%Value was:-8.49712460063895
#pos(a26,
{},
{},
{initiate(interact(a)).
occludes(b,a).
occludes(c,a).
occludes_more(c,b).
on(agent,d).}).
%%Value was:-8.719838056680151
#pos(a27,
{},
{},
{initiate(collect).
more_goals(left).}).
%%Value was:153.33333333333334
#pos(a28,
{},
{},
{initiate(balance(a,b)).
more_goals(left).}).
%%Value was:18.257142857142856
#pos(a29,
{},
{},
{more_goals(left).}).
%%Value was:-7.115461500000001
#pos(a30,
{},
{},
{initiate(interact(a)).
more_goals(left).}).
%%Value was:-8.334692307692308
#pos(a31,
{},
{},
{bigger(a,b).
initiate(interact(a)).}).
%%Value was:200.0
#pos(a32,
{},
{},
{bigger(a,b).}).
%%Value was:-10.0
#pos(a33,
{},
{},
{bigger(a,b).
initiate(drop(right)).}).
%%Value was:-10.0
#pos(a34,
{},
{},
{bigger(a,b).
initiate(drop(left)).}).
%%Value was:-10.0
#pos(a35,
{},
{},
{bigger(a,b).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a36,
{},
{},
{initiate(balance(a,b)).
on(agent,a).}).
%%Value was:25.35740091116172
#pos(a37,
{},
{},
{on(agent,a).}).
%%Value was:1.3333874458874448
#pos(a38,
{},
{},
{initiate(observe).
on(agent,a).}).
%%Value was:-2.1730909090909103
#pos(a39,
{},
{},
{initiate(drop(left)).
on(agent,a).}).
%%Value was:-3.3228717948717965
#pos(a40,
{},
{},
{initiate(avoid(a,b)).
on(agent,c).}).
%%Value was:-7.107115384615383
#pos(a41,
{},
{},
{initiate(drop(right)).
on(agent,a).}).
%%Value was:-7.298386363636364
#pos(a42,
{},
{},
{initiate(explore(a,b)).
on(agent,c).}).
%%Value was:-7.406233333333335
#pos(a43,
{},
{},
{initiate(interact(a)).
on(agent,b).}).
%%Value was:-8.224604417670685
#pos(a44,
{},
{},
{initiate(avoid(a,a)).
on(agent,b).}).
%%Value was:-8.446666666666667
#pos(a45,
{},
{},
{initiate(climb(a)).
on(agent,b).}).
%%Value was:-10.0
#pos(a46,
{},
{},
{initiate(climb(a)).
on(agent,a).}).
%%Value was:-10.0
#pos(a47,
{},
{},
{initiate(collect).
on(agent,a).}).
%%Value was:-10.0
#pos(a48,
{},
{},
{initiate(collect).
more_goals(right).}).
%%Value was:200.0
#pos(a49,
{},
{},
{more_goals(right).}).
%%Value was:38.566456150499995
#pos(a50,
{},
{},
{initiate(interact(a)).
more_goals(right).}).
%%Value was:-8.977142857142857
#pos(a51,
{},
{},
{initiate(balance(a,b)).
more_goals(right).}).
%%Value was:-9.339
#pos(a52,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).
on(agent,c).}).
%%Value was:11.835884615384614
#pos(a53,
{},
{},
{initiate(observe).
occludes(a,b).
on(agent,c).}).
%%Value was:9.853999999999997
#pos(a54,
{},
{},
{occludes(a,b).
on(agent,c).}).
%%Value was:-6.359208955223882
#pos(a55,
{},
{},
{initiate(interact(a)).
occludes(b,a).
on(agent,c).}).
%%Value was:-6.8935666666666675
#pos(a56,
{},
{},
{initiate(drop(right)).
occludes(a,b).
on(agent,c).}).
%%Value was:-7.305749999999999
#pos(a57,
{},
{},
{initiate(drop(left)).
occludes(a,b).
on(agent,c).}).
%%Value was:-7.891541666666668
#pos(a58,
{},
{},
{initiate(avoid(a,b)).
occludes(c,b).
on(agent,d).}).
%%Value was:-8.633341463414636
#pos(a59,
{},
{},
{initiate(balance(a,b)).
occludes(c,b).
on(agent,a).}).
%%Value was:-8.993038461538463
#pos(a60,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
on(agent,d).}).
%%Value was:-9.666666666666666
#pos(a61,
{},
{},
{initiate(observe).
moving.
on(agent,a).}).
%%Value was:1.8919524193548374
#pos(a62,
{},
{},
{initiate(balance(a,b)).
moving.
on(agent,a).}).
%%Value was:-3.501805263157896
#pos(a63,
{},
{},
{initiate(interact(a)).
moving.
on(agent,b).}).
%%Value was:-4.430733333333334
#pos(a64,
{},
{},
{moving.
on(agent,a).}).
%%Value was:-4.725960576923075
#pos(a65,
{},
{},
{initiate(explore(a,b)).
moving.
on(agent,c).}).
%%Value was:-4.841353125
#pos(a66,
{},
{},
{initiate(drop(right)).
moving.
on(agent,a).}).
%%Value was:-6.1313999999999975
#pos(a67,
{},
{},
{initiate(drop(left)).
moving.
on(agent,a).}).
%%Value was:-6.237333870967741
#pos(a68,
{},
{},
{initiate(avoid(a,b)).
moving.
on(agent,c).}).
%%Value was:-6.6899756756756705
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a0, a5).
#brave_ordering(b5@10, a0, a6).
#brave_ordering(b6@10, a0, a7).
#brave_ordering(b7@10, a0, a8).
#brave_ordering(b8@10, a9, a10).
#brave_ordering(b9@10, a9, a11).
#brave_ordering(b10@10, a9, a12).
#brave_ordering(b11@10, a9, a13).
#brave_ordering(b12@10, a9, a14).
#brave_ordering(b13@10, a15, a16).
#brave_ordering(b14@10, a15, a17).
#brave_ordering(b15@10, a15, a18).
#brave_ordering(b16@10, a15, a19).
#brave_ordering(b17@10, a15, a20).
#brave_ordering(b18@10, a21, a22).
#brave_ordering(b19@10, a21, a23).
#brave_ordering(b20@10, a21, a24).
#brave_ordering(b21@10, a21, a25).
#brave_ordering(b22@10, a21, a26).
#brave_ordering(b23@10, a27, a28).
#brave_ordering(b24@10, a27, a29).
#brave_ordering(b25@10, a27, a30).
#brave_ordering(b26@10, a31, a32).
#brave_ordering(b27@10, a31, a33).
#brave_ordering(b28@10, a31, a34).
#brave_ordering(b29@10, a31, a35).
#brave_ordering(b30@10, a36, a37).
#brave_ordering(b31@10, a36, a38).
#brave_ordering(b32@10, a36, a39).
#brave_ordering(b33@10, a36, a40).
#brave_ordering(b34@10, a36, a41).
#brave_ordering(b35@10, a36, a42).
#brave_ordering(b36@10, a36, a43).
#brave_ordering(b37@10, a36, a44).
#brave_ordering(b38@10, a36, a45).
#brave_ordering(b39@10, a36, a46).
#brave_ordering(b40@10, a36, a47).
#brave_ordering(b41@10, a48, a49).
#brave_ordering(b42@10, a48, a50).
#brave_ordering(b43@10, a48, a51).
#brave_ordering(b44@10, a52, a53).
#brave_ordering(b45@10, a52, a54).
#brave_ordering(b46@10, a52, a55).
#brave_ordering(b47@10, a52, a56).
#brave_ordering(b48@10, a52, a57).
#brave_ordering(b49@10, a52, a58).
#brave_ordering(b50@10, a52, a59).
#brave_ordering(b51@10, a52, a60).
#brave_ordering(b52@10, a61, a62).
#brave_ordering(b53@10, a61, a63).
#brave_ordering(b54@10, a61, a64).
#brave_ordering(b55@10, a61, a65).
#brave_ordering(b56@10, a61, a66).
#brave_ordering(b57@10, a61, a67).
#brave_ordering(b58@10, a61, a68).
