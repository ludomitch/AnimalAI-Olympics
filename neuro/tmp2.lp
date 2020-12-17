#modeo(1, initiate(rotate)).
#modeo(1, initiate(interact(var(x)))).
#modeo(1, initiate(explore(var(x),var(y)))).
#modeo(1, initiate(climb(var(x)))).
#modeo(1, initiate(balance(var(x),var(y)))).
#modeo(1, initiate(avoid(var(x),var(y)))).
#modeo(1, on(agent, var(x))).
#modeo(1, occludes(var(x),var(y))).
#modeo(1, occludes_more(var(x),var(y))).
#modeo(1, wall(var(x))).
#modeo(1, lava(var(x))).
#modeo(1, platform(var(x))).
#modeo(1, ramp(var(x))).

#weight(1).
#weight(-1).
#maxv(4).
#maxp(6).
#pos(a0,
{},
{},
{initiate(rotate).}).
%%Value was:3.165796545105568
#pos(a1,
{},
{},
{initiate(interact(a)).}).
%%Value was:-0.5969189189189156
#pos(a2,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).}).
%%Value was:12.11454838709678
#pos(a3,
{},
{},
{initiate(rotate).
occludes(a,b).}).
%%Value was:-1.175067567567562
#pos(a4,
{},
{},
{initiate(interact(a)).
occludes(b,a).}).
%%Value was:-3.6885273972602737
#pos(a5,
{},
{},
{gvis(a).
initiate(avoid(b,a)).
lava(b).}).
%%Value was:200.0
#pos(a6,
{},
{},
{gvis(a).
initiate(rotate).
lava(b).}).
%%Value was:49.395348837209305
#pos(a7,
{},
{},
{gvis(a).
initiate(interact(a)).
lava(b).}).
%%Value was:-10.0
#pos(a8,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
occludes(a,b).
occludes_more(a,c).
on(agent,d).
platform(d).}).
%%Value was:92.80227272727286
#pos(a9,
{},
{},
{initiate(rotate).
occludes(a,b).
occludes(c,b).
occludes_more(c,a).
on(agent,d).
platform(d).}).
%%Value was:-3.3905362776025343
#pos(a10,
{},
{},
{initiate(explore(a,b)).
occludes(c,b).
occludes(d,b).
occludes_more(d,c).
on(agent,e).
platform(e).}).
%%Value was:-5.341522491349462
#pos(a11,
{},
{},
{initiate(explore(a,b)).
occludes(a,b).
occludes(c,b).
occludes_more(c,a).
on(agent,d).
platform(d).}).
%%Value was:-8.488817891373772
#pos(a12,
{},
{},
{initiate(balance(a,b)).
occludes(c,b).
occludes(d,b).
occludes_more(d,c).
on(agent,a).
platform(a).}).
%%Value was:-8.49712460063895
#pos(a13,
{},
{},
{initiate(interact(a)).
occludes(b,a).
occludes(c,a).
occludes_more(c,b).
on(agent,d).
platform(d).}).
%%Value was:-8.719838056680151
#pos(a14,
{},
{},
{gvis(a).
initiate(interact(a)).}).
%%Value was:196.6453674121406
#pos(a15,
{},
{},
{gvis(a).
initiate(explore(b,a)).}).
%%Value was:40.28128078817734
#pos(a16,
{},
{},
{gvis(a).
initiate(rotate).}).
%%Value was:40.15605072463768
#pos(a17,
{},
{},
{initiate(balance(a,b)).
on(agent,a).
platform(a).}).
%%Value was:3.225806451612903
#pos(a18,
{},
{},
{initiate(rotate).
on(agent,a).
platform(a).}).
%%Value was:-6.580882352941177
#pos(a19,
{},
{},
{initiate(explore(a,b)).
on(agent,c).
platform(c).}).
%%Value was:-9.5
#pos(a20,
{},
{},
{initiate(interact(a)).
on(agent,b).
platform(b).}).
%%Value was:-9.884615384615385
#pos(a21,
{},
{},
{gvis(a).
initiate(balance(b,a)).
on(agent,b).
platform(b).
ramp(c).}).
%%Value was:95.0
#pos(a22,
{},
{},
{gvis(a).
initiate(climb(b)).
on(agent,c).
platform(c).
ramp(b).}).
%%Value was:-10.0
#pos(a23,
{},
{},
{gvis(a).
initiate(interact(a)).
on(agent,b).
platform(b).
ramp(c).}).
%%Value was:-10.0
#pos(a24,
{},
{},
{gvis(a).
initiate(rotate).
on(agent,b).
platform(b).
ramp(c).}).
%%Value was:-10.0
#pos(a25,
{},
{},
{gvis(a).
initiate(balance(b,a)).
on(agent,b).
platform(b).}).
%%Value was:37.593525179856115
#pos(a26,
{},
{},
{gvis(a).
initiate(rotate).
on(agent,b).
platform(b).}).
%%Value was:5.775167785234899
#pos(a27,
{},
{},
{gvis(a).
initiate(interact(a)).
on(agent,b).
platform(b).}).
%%Value was:-7.390879478827362
#pos(a28,
{},
{},
{gvis(a).
initiate(climb(b)).
platform(c).
ramp(b).}).
%%Value was:9.3108778625954
#pos(a29,
{},
{},
{gvis(a).
initiate(balance(b,a)).
platform(b).
ramp(c).}).
%%Value was:-7.344303797468292
#pos(a30,
{},
{},
{gvis(a).
initiate(rotate).
platform(b).
ramp(c).}).
%%Value was:-8.099999999999937
#pos(a31,
{},
{},
{gvis(a).
initiate(interact(a)).
platform(b).
ramp(c).}).
%%Value was:-8.54733727810649
#brave_ordering(b0@10, a0, a1).
#brave_ordering(b1@10, a2, a3).
#brave_ordering(b2@10, a2, a4).
#brave_ordering(b3@10, a5, a6).
#brave_ordering(b4@10, a5, a7).
#brave_ordering(b5@10, a8, a9).
#brave_ordering(b6@10, a8, a10).
#brave_ordering(b7@10, a8, a11).
#brave_ordering(b8@10, a8, a12).
#brave_ordering(b9@10, a8, a13).
#brave_ordering(b10@10, a14, a15).
#brave_ordering(b11@10, a14, a16).
#brave_ordering(b12@10, a17, a18).
#brave_ordering(b13@10, a17, a19).
#brave_ordering(b14@10, a17, a20).
#brave_ordering(b15@10, a21, a22).
#brave_ordering(b16@10, a21, a23).
#brave_ordering(b17@10, a21, a24).
#brave_ordering(b18@10, a25, a26).
#brave_ordering(b19@10, a25, a27).
#brave_ordering(b20@10, a28, a29).
#brave_ordering(b21@10, a28, a30).
#brave_ordering(b22@10, a28, a31).
