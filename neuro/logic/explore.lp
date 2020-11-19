% Assumptions
present(X,T):-goal(X), timestep(T).
% Observables rules
present(X,T):- visible(X, _, T).
visible(T):- visible(X, _, T).
not_occluding(X, T):-on(agent, X, T).
separator(Y, T):-on(agent, X, T), adjacent(X, Y, T), platform(X).
occludes(X,Y,T) :- present(Y, T), visible(X, _, T), not visible(Y, _, T), not separator(X, T), not not_occluding(X, T).
% Observables - > actions: this is what we need to learn
initiate(rotate,T):- not visible(T), timestep(T).
initiate(interact(V0),V2) :- goal(V0), visible(V0, V1, V2).
% Mode bias
#modeh(1, initiate(explore(var(X),var(Y),var(Z)),var(T))).
#maxv(4).
#modeb(1, goal(var(X))).
#modeb(1, visible(var(X), var(Z), var(T))).
#modeb(1, occludes(var(X),var(Y), var(T))).

1~delete.
% The higher the penalty the more confident you are in the rule

#pos(a0@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a1@1,
{initiate(explore(10,42,202),3)},
{},
{timestep(3).
visible(10,202,3).
wall(10).
goal(42).
}).

#pos(a2@1,
{initiate(explore(10,42,59),5)},
{},
{timestep(5).
visible(10,59,5).
wall(10).
goal(42).
}).

#pos(a3@1,
{},
{initiate(explore(10,42,47),2)},
{timestep(2).
visible(10,47,2).
wall(10).
goal(42).
}).

#pos(a4@1,
{},
{},
{}).

#pos(a5@1,
{initiate(explore(10,42,178),1)},
{},
{timestep(1).
visible(10,178,1).
wall(10).
goal(42).
}).

#pos(a6@1,
{initiate(explore(10,42,130),0)},
{},
{timestep(0).
visible(10,130,0).
wall(10).
goal(42).
}).

#pos(a7@1,
{initiate(explore(10,42,35),2)},
{},
{timestep(2).
visible(10,35,2).
wall(10).
goal(42).
}).

#pos(a8@1,
{initiate(explore(10,42,83),4)},
{},
{timestep(4).
visible(10,83,4).
wall(10).
goal(42).
}).

#pos(a9@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a10@1,
{},
{},
{}).

#pos(a11@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a12@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a13@1,
{initiate(explore(10,42,226),0)},
{},
{timestep(0).
visible(10,226,0).
wall(10).
goal(42).
}).

#pos(a14@1,
{initiate(explore(10,42,59),1)},
{},
{timestep(1).
visible(10,59,1).
wall(10).
goal(42).
}).

#pos(a15@1,
{},
{},
{}).

#pos(a16@1,
{},
{initiate(explore(10,42,59),1)},
{timestep(1).
visible(10,59,1).
wall(10).
goal(42).
}).

#pos(a17@1,
{initiate(rotate,1)},
{},
{timestep(1).
visible(10,107,1).
wall(10).
goal(42).
}).

#pos(a18@1,
{initiate(explore(10,42,154),3)},
{},
{timestep(3).
visible(10,154,3).
wall(10).
goal(42).
}).

#pos(a19@1,
{},
{initiate(explore(10,42,59),2)},
{timestep(2).
visible(10,59,2).
wall(10).
goal(42).
}).

#pos(a20@1,
{initiate(explore(10,11,59),0)},
{},
{timestep(0).
visible(10,59,0).
wall(10).
visible(11,202,0).
wall(11).
goal(42).
}).

#pos(a21@1,
{},
{},
{}).

#pos(a22@1,
{initiate(explore(10,42,95),2)},
{},
{timestep(2).
visible(10,95,2).
wall(10).
goal(42).
}).

#pos(a23@1,
{},
{},
{}).

#pos(a24@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a25@1,
{initiate(explore(11,42,47),4)},
{},
{timestep(4).
visible(11,47,4).
wall(11).
goal(42).
}).

#pos(a26@1,
{},
{},
{}).

#pos(a27@1,
{initiate(explore(10,42,130),2)},
{},
{timestep(2).
visible(10,130,2).
wall(10).
goal(42).
}).

#pos(a28@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a29@1,
{initiate(rotate,1)},
{},
{timestep(1).
visible(10,59,1).
wall(10).
goal(42).
}).

