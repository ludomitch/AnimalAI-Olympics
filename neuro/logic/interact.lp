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
% Mode bias
#modeh(1, initiate(explore(var(x),var(y),var(z)),var(t))).
#modeh(1, initiate(interact(var(x)),var(t))).
#maxv(4).
#modeb(1, goal(var(x))).
#modeb(1, visible(var(x), var(z), var(t))).
#modeb(1, occludes(var(x),var(y), var(t))).

#pos(a0@1,
{},
{initiate(interact(10),17)},
{timestep(17).
visible(2,47,17).
visible(10,226,17).
wall(10).
goal(2).
}).

#pos(a1@1,
{initiate(interact(0),9)},
{},
{adjacent(0,10, 9).
adjacent(10,0, 9).
timestep(9).
visible(0,71,9).
visible(10,83,9).
wall(10).
goal(0).
}).

#pos(a2@1,
{initiate(interact(0),1)},
{},
{timestep(1).
visible(0,23,1).
goal(0).
}).

#pos(a3@1,
{},
{initiate(interact(10),5)},
{timestep(5).
visible(10,726,5).
wall(10).
goal(42).
}).

#pos(a4@1,
{},
{initiate(interact(10),2)},
{timestep(2).
visible(10,952,2).
wall(10).
goal(42).
}).

#pos(a5@1,
{},
{initiate(explore(10,1,392),3)},
{timestep(3).
visible(1,23,3).
visible(10,392,3).
wall(10).
goal(1).
}).

#pos(a6@1,
{},
{initiate(interact(10),3)},
{timestep(3).
visible(10,964,3).
wall(10).
goal(42).
}).

#pos(a7@1,
{initiate(interact(0),4)},
{},
{timestep(4).
visible(0,23,4).
visible(10,1000,4).
wall(10).
goal(0).
}).

#pos(a8@1,
{initiate(interact(0),3)},
{},
{adjacent(0,10, 3).
adjacent(10,0, 3).
timestep(3).
visible(0,119,3).
visible(10,738,3).
wall(10).
goal(0).
}).

#pos(a9@1,
{initiate(interact(0),7)},
{},
{timestep(7).
visible(0,23,7).
visible(10,285,7).
wall(10).
goal(0).
}).

#pos(a10@1,
{initiate(interact(10),3)},
{},
{timestep(3).
visible(0,95,3).
visible(10,178,3).
wall(10).
goal(0).
}).

#pos(a11@1,
{initiate(interact(0),1)},
{},
{timestep(1).
visible(0,47,1).
goal(0).
}).

#pos(a12@1,
{initiate(interact(0),2)},
{},
{timestep(2).
visible(0,23,2).
visible(10,47,2).
wall(10).
goal(0).
}).

#pos(a13@1,
{},
{initiate(explore(10,42,1000),1)},
{timestep(1).
visible(10,1000,1).
wall(10).
goal(42).
}).

#pos(a14@1,
{initiate(interact(1),5)},
{},
{timestep(5).
visible(1,23,5).
visible(10,333,5).
wall(10).
goal(1).
}).

#pos(a15@1,
{},
{initiate(interact(10),3)},
{timestep(3).
visible(0,23,3).
visible(10,178,3).
wall(10).
goal(0).
}).

#pos(a16@1,
{initiate(interact(0),6)},
{},
{adjacent(0,10, 6).
adjacent(10,0, 6).
timestep(6).
visible(0,23,6).
visible(10,35,6).
wall(10).
goal(0).
}).

#pos(a17@1,
{initiate(interact(0),1)},
{},
{timestep(1).
visible(0,47,1).
visible(10,47,1).
wall(10).
goal(0).
}).

#pos(a18@1,
{},
{initiate(interact(10),3)},
{timestep(3).
visible(0,23,3).
visible(10,607,3).
wall(10).
goal(0).
}).

#pos(a19@1,
{initiate(interact(0),3)},
{},
{timestep(3).
visible(0,23,3).
goal(0).
}).

#pos(a20@1,
{initiate(interact(0),0)},
{},
{timestep(0).
visible(0,95,0).
goal(0).
}).

#pos(a21@1,
{},
{initiate(interact(10),6)},
{timestep(6).
visible(1,23,6).
visible(10,690,6).
wall(10).
goal(1).
}).

#pos(a22@1,
{},
{initiate(explore(10,42,1000),2)},
{timestep(2).
visible(10,1000,2).
wall(10).
goal(42).
}).

#pos(a23@1,
{initiate(interact(0),0)},
{},
{timestep(0).
visible(0,47,0).
goal(0).
}).

#pos(a24@1,
{},
{initiate(interact(10),1)},
{timestep(1).
visible(10,952,1).
wall(10).
goal(42).
}).

#pos(a25@1,
{initiate(interact(0),1)},
{},
{timestep(1).
visible(0,47,1).
goal(0).
}).

#pos(a26@1,
{initiate(interact(0),6)},
{},
{timestep(6).
visible(0,47,6).
goal(0).
}).

#pos(a27@1,
{initiate(interact(1),6)},
{},
{timestep(6).
visible(1,71,6).
goal(1).
}).

#pos(a28@1,
{},
{initiate(interact(10),2)},
{timestep(2).
visible(10,1000,2).
wall(10).
goal(42).
}).

#pos(a29@1,
{},
{initiate(explore(10,42,880),2)},
{timestep(2).
visible(10,880,2).
wall(10).
goal(42).
}).

