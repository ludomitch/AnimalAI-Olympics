
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
#modeh(1, initiate(explore(var(X),var(Y),var(Z)),var(T))).
#maxv(4).

        #modeb(1, goal(var(X))).
        #modeb(1, visible(var(X), var(Z), var(T))).
        #modeb(1, occludes(var(X),var(Y), var(T))).
#pos(a0@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a1@1,
{},
{},
{}).

#pos(a2@1,
{initiate(explore(10,42,47),0)},
{},
{timestep(0).
visible(10,47,0).
wall(10).
goal(42).
}).

#pos(a3@1,
{initiate(explore(10,42,142),2)},
{},
{timestep(2).
visible(10,142,2).
wall(10).
goal(42).
}).

#pos(a4@1,
{},
{},
{}).

#pos(a5@1,
{initiate(explore(10,42,345),2)},
{},
{timestep(2).
visible(10,345,2).
wall(10).
goal(42).
}).

#pos(a6@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a7@1,
{initiate(explore(10,42,35),0)},
{},
{timestep(0).
visible(10,35,0).
wall(10).
goal(42).
}).

#pos(a8@1,
{initiate(explore(10,42,95),0)},
{},
{timestep(0).
visible(10,95,0).
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
{initiate(explore(10,42,238),1)},
{},
{timestep(1).
visible(10,238,1).
wall(10).
goal(42).
}).

#pos(a12@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a13@1,
{initiate(explore(10,42,107),1)},
{},
{timestep(1).
visible(10,107,1).
wall(10).
goal(42).
}).

#pos(a14@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a15@1,
{initiate(rotate,0)},
{},
{timestep(0).
goal(42).
}).

#pos(a16@1,
{},
{},
{}).

#pos(a17@1,
{initiate(explore(10,42,59),2)},
{},
{timestep(2).
visible(10,59,2).
wall(10).
goal(42).
}).

#pos(a18@1,
{initiate(explore(10,42,59),2)},
{},
{timestep(2).
visible(10,59,2).
wall(10).
goal(42).
}).

#pos(a19@1,
{initiate(explore(10,42,154),0)},
{},
{timestep(0).
visible(10,154,0).
wall(10).
goal(42).
}).

#pos(a20@1,
{},
{},
{}).

#pos(a21@1,
{},
{},
{}).

#pos(a22@1,
{initiate(explore(10,42,416),3)},
{},
{timestep(3).
visible(10,416,3).
wall(10).
goal(42).
}).

#neg(a23@1,
{initiate(explore(10,42,47),2)},
{},
{timestep(2).
visible(10,47,2).
wall(10).
goal(42).
}).

#pos(a24@1,
{initiate(explore(10,42,83),1)},
{},
{timestep(1).
visible(10,83,1).
wall(10).
goal(42).
}).

#pos(a25@1,
{initiate(rotate,1)},
{},
{timestep(1).
visible(10,47,1).
wall(10).
goal(42).
}).

#pos(a26@1,
{},
{},
{}).

#pos(a27@1,
{initiate(explore(10,42,238),0)},
{},
{timestep(0).
visible(10,238,0).
wall(10).
goal(42).
}).

#neg(a28@1,
{initiate(explore(10,42,190),3)},
{},
{timestep(3).
visible(10,190,3).
wall(10).
goal(42).
}).

#neg(a29@1,
{initiate(explore(10,42,95),0)},
{},
{timestep(0).
visible(10,95,0).
wall(10).
goal(42).
}).

