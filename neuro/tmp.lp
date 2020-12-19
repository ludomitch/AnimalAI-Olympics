#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(collect(var(x)))).
#modeo(1, initiate(explore(var(x),var(y)))).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, initiate(avoid(var(x),var(y)))).
#modeo(1, initiate(drop(var(x)))).
#modeo(1, gvis(var(x))).
#modeo(1, on(agent, var(x))).
#modeo(1, occludes(var(x),var(y))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, bigger(var(x),var(y))).
#modeo(1, more_goals(var(x))).

#weight(-1).
#maxv(4).
#maxp(7).
#pos(a0,
{},
{},
{initiate(collect).}).
%%Value was:4.482758620689655
#pos(a1,
{},
{},
{initiate(rotate).}).
%%Value was:-0.15239107105943064
#pos(a2,
{},
{},
{initiate(interact(a)).}).
%%Value was:-3.6318132121212097
#pos(a3,
{},
{},
{initiate(climb(a)).}).
%%Value was:-9.737864077669903
#pos(a4,
{},
{},
{initiate(balance(a,b)).}).
%%Value was:-9.875956284153004
#pos(a5,
{},
{},
{initiate(drop(left)).
more_goals(left).
on(agent,a).}).
%%Value was:86.68483077572728
#pos(a6,
{},
{},
{initiate(collect).
more_goals(left).
on(agent,a).}).
%%Value was:57.2
#pos(a7,
{},
{},
{initiate(balance(a,b)).
more_goals(left).
on(agent,a).}).
%%Value was:33.69172999999999
#pos(a8,
{},
{},
{initiate(rotate).
more_goals(left).
on(agent,a).}).
%%Value was:9.852027500000002
#pos(a9,
{},
{},
{initiate(interact(a)).
more_goals(left).
on(agent,b).}).
%%Value was:-0.9077441860465122
#pos(a10,
{},
{},
{initiate(drop(right)).
more_goals(left).
on(agent,a).}).
%%Value was:-7.966953488571429
#pos(a11,
{},
{},
{initiate(balance(a,b)).
on(agent,a).}).
%%Value was:2.8626562499999997
#pos(a12,
{},
{},
{initiate(rotate).
on(agent,a).}).
%%Value was:-6.591970802919708
#pos(a13,
{},
{},
{initiate(drop(right)).
on(agent,a).}).
%%Value was:-7.8585
#pos(a14,
{},
{},
{initiate(drop(left)).
on(agent,a).}).
%%Value was:-8.700000000000001
#pos(a15,
{},
{},
{initiate(explore(a,b)).
on(agent,c).}).
%%Value was:-9.5
#pos(a16,
{},
{},
{initiate(interact(a)).
on(agent,b).}).
%%Value was:-9.88679245283019
#pos(a17,
{},
{},
{initiate(climb(a)).
on(agent,b).}).
%%Value was:-10.0
#pos(a18,
{},
{},
{initiate(climb(a)).
on(agent,a).}).
%%Value was:-10.0
#pos(a19,
{},
{},
{initiate(collect).
on(agent,a).}).
%%Value was:-10.0
#pos(a20,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).}).
%%Value was:7.738427835051552
#pos(a21,
{},
{},
{initiate(rotate).
occludes(a,b).}).
%%Value was:-2.924853333333329
#pos(a22,
{},
{},
{initiate(interact(a)).
occludes(b,a).}).
%%Value was:-4.823174157303371
#pos(a23,
{},
{},
{initiate(balance(a,b)).
occludes(c,b).}).
%%Value was:-9.52808988764045
#pos(a24,
{},
{},
{gvis(a).
initiate(balance(b,a)).
on(agent,b).}).
%%Value was:38.236749116607776
#pos(a25,
{},
{},
{gvis(a).
initiate(rotate).
on(agent,b).}).
%%Value was:5.514851485148514
#pos(a26,
{},
{},
{gvis(a).
initiate(interact(a)).
on(agent,b).}).
%%Value was:-7.449044585987261
#pos(a27,
{},
{},
{gvis(a).
initiate(climb(b)).
on(agent,c).}).
%%Value was:-10.0
#pos(a28,
{},
{},
{initiate(collect).
more_goals(right).}).
%%Value was:200.0
#pos(a29,
{},
{},
{initiate(rotate).
more_goals(right).}).
%%Value was:38.566456150499995
#pos(a30,
{},
{},
{initiate(interact(a)).
more_goals(right).}).
%%Value was:-8.977142857142857
#pos(a31,
{},
{},
{initiate(balance(a,b)).
more_goals(right).}).
%%Value was:-9.339
#pos(a32,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
occludes(a,b).
occludes_more(a,c).
on(agent,d).}).
%%Value was:92.80227272727286
#pos(a33,
{},
{},
{initiate(rotate).
occludes(a,b).
occludes(c,b).
occludes_more(c,a).
on(agent,d).}).
%%Value was:-3.3905362776025343
#pos(a34,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
occludes(d,b).
occludes_more(d,c).
on(agent,e).}).
%%Value was:-5.341522491349462
#pos(a35,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).
occludes(c,b).
occludes_more(c,a).
on(agent,d).}).
%%Value was:-8.488817891373772
#pos(a36,
{},
{},
{initiate(balance(a,b)).
occludes(c,b).
occludes(d,b).
occludes_more(d,c).
on(agent,a).}).
%%Value was:-8.49712460063895
#pos(a37,
{},
{},
{initiate(interact(a)).
occludes(b,a).
occludes(c,a).
occludes_more(c,b).
on(agent,d).}).
%%Value was:-8.719838056680151
#pos(a38,
{},
{},
{initiate(collect).
more_goals(left).}).
%%Value was:153.33333333333334
#pos(a39,
{},
{},
{initiate(balance(a,b)).
more_goals(left).}).
%%Value was:18.257142857142856
#pos(a40,
{},
{},
{initiate(rotate).
more_goals(left).}).
%%Value was:-7.115461500000001
#pos(a41,
{},
{},
{initiate(interact(a)).
more_goals(left).}).
%%Value was:-8.334692307692308
#pos(a42,
{},
{},
{bigger(a,b).
gvis(b).
gvis(a).
initiate(interact(a)).}).
%%Value was:200.0
#pos(a43,
{},
{},
{bigger(a,b).
gvis(b).
gvis(a).
initiate(rotate).}).
%%Value was:-10.0
#pos(a44,
{},
{},
{bigger(a,b).
gvis(b).
gvis(a).
initiate(drop(right)).}).
%%Value was:-10.0
#pos(a45,
{},
{},
{bigger(a,b).
gvis(b).
gvis(a).
initiate(drop(left)).}).
%%Value was:-10.0
#pos(a46,
{},
{},
{bigger(a,b).
gvis(b).
gvis(a).
initiate(interact(b)).}).
%%Value was:-10.0
#pos(a47,
{},
{},
{gvis(a).
initiate(avoid(b,a)).}).
%%Value was:200.0
#pos(a48,
{},
{},
{gvis(a).
initiate(explore(b,a)).}).
%%Value was:40.03480392156863
#pos(a49,
{},
{},
{gvis(a).
initiate(interact(a)).}).
%%Value was:36.874018558173
#pos(a50,
{},
{},
{gvis(a).
initiate(climb(b)).}).
%%Value was:6.178922345483404
#pos(a51,
{},
{},
{gvis(a).
initiate(rotate).}).
%%Value was:6.150583629893189
#pos(a52,
{},
{},
{gvis(a).
initiate(balance(b,a)).}).
%%Value was:-8.45994180407379
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a0, a2).
#brave_ordering(b2@10, a0, a3).
#brave_ordering(b3@10, a0, a4).
#brave_ordering(b4@10, a5, a6).
#brave_ordering(b5@10, a5, a7).
#brave_ordering(b6@10, a5, a8).
#brave_ordering(b7@10, a5, a9).
#brave_ordering(b8@10, a5, a10).
#brave_ordering(b9@10, a11, a12).
#brave_ordering(b10@10, a11, a13).
#brave_ordering(b11@10, a11, a14).
#brave_ordering(b12@10, a11, a15).
#brave_ordering(b13@10, a11, a16).
#brave_ordering(b14@10, a11, a17).
#brave_ordering(b15@10, a11, a18).
#brave_ordering(b16@10, a11, a19).
#brave_ordering(b17@10, a20, a21).
#brave_ordering(b18@10, a20, a22).
#brave_ordering(b19@10, a20, a23).
#brave_ordering(b20@10, a24, a25).
#brave_ordering(b21@10, a24, a26).
#brave_ordering(b22@10, a24, a27).
#brave_ordering(b23@10, a28, a29).
#brave_ordering(b24@10, a28, a30).
#brave_ordering(b25@10, a28, a31).
#brave_ordering(b26@10, a32, a33).
#brave_ordering(b27@10, a32, a34).
#brave_ordering(b28@10, a32, a35).
#brave_ordering(b29@10, a32, a36).
#brave_ordering(b30@10, a32, a37).
#brave_ordering(b31@10, a38, a39).
#brave_ordering(b32@10, a38, a40).
#brave_ordering(b33@10, a38, a41).
#brave_ordering(b34@10, a42, a43).
#brave_ordering(b35@10, a42, a44).
#brave_ordering(b36@10, a42, a45).
#brave_ordering(b37@10, a42, a46).
#brave_ordering(b38@10, a47, a48).
#brave_ordering(b39@10, a47, a49).
#brave_ordering(b40@10, a47, a50).
#brave_ordering(b41@10, a47, a51).
#brave_ordering(b42@10, a47, a52).
