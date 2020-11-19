
        present(X,T):-goal(X), timestep(T).
        % Observables rules
        present(X,T):- visible(X, _, T).
        visible(T):- visible(X, _, T).
        not_occluding(X, T):-on(agent, X, T).
        separator(Y, T):-on(agent, X, T), adjacent(X, Y, T), platform(X).
        occludes(X,Y,T) :- present(Y, T), visible(X, _, T), not visible(Y, _, T), not separator(X, T), not not_occluding(X, T).
        % Observables - > actions: this is what we need to learn
        initiate(rotate,T):- not visible(T), timestep(T).
#modeh(1, initiate(explore(var(X),var(Y),var(Z)),var(T))).
#modeh(1, initiate(interact(var(X)),var(T))).
#maxv(4).

        #modeb(1, goal(var(X))).
        #modeb(1, visible(var(X), var(Z), var(T))).
        #modeb(1, occludes(var(X),var(Y), var(T))).
#pos(a0@1,
{},
{initiate(interact(10),4)},
{timestep(4).
visible(10,1000,4).
wall(10).
goal(42).
}).

#pos(a1@1,
{},
{initiate(interact(10),2)},
{timestep(2).
visible(10,964,2).
wall(10).
goal(42).
}).

#pos(a2@1,
{initiate(interact(0),2)},
{},
{adjacent(0,10, 2).
adjacent(10,0, 2).
timestep(2).
visible(0,71,2).
visible(10,678,2).
wall(10).
goal(0).
}).

#pos(a3@1,
{},
{initiate(explore(10,42,1000),7)},
{timestep(7).
visible(10,1000,7).
wall(10).
goal(42).
}).

#pos(a4@1,
{},
{initiate(explore(10,42,1000),1)},
{timestep(1).
visible(10,1000,1).
wall(10).
goal(42).
}).

#pos(a5@1,
{},
{initiate(interact(1),6)},
{adjacent(1,10, 6).
adjacent(10,1, 6).
timestep(6).
visible(1,23,6).
visible(10,559,6).
wall(10).
goal(1).
}).

#pos(a6@1,
{},
{initiate(interact(0),7)},
{timestep(7).
visible(0,23,7).
goal(0).
}).

#pos(a7@1,
{},
{initiate(interact(0),2)},
{timestep(2).
visible(0,95,2).
visible(10,952,2).
wall(10).
goal(0).
}).

#pos(a8@1,
{initiate(interact(1),3)},
{},
{timestep(3).
visible(1,71,3).
goal(1).
}).

#pos(a9@1,
{initiate(interact(0),4)},
{},
{timestep(4).
visible(0,47,4).
visible(10,178,4).
wall(10).
goal(0).
}).

#pos(a10@1,
{},
{initiate(interact(10),6)},
{timestep(6).
visible(2,23,6).
visible(10,416,6).
wall(10).
goal(2).
}).

#pos(a11@1,
{initiate(interact(1),8)},
{},
{timestep(8).
visible(1,23,8).
visible(10,821,8).
wall(10).
goal(1).
}).

#pos(a12@1,
{},
{initiate(explore(10,0,369),17)},
{timestep(17).
visible(0,23,17).
visible(10,369,17).
wall(10).
goal(0).
}).

#pos(a13@1,
{},
{initiate(interact(10),6)},
{timestep(6).
visible(10,380,6).
wall(10).
goal(42).
}).

#pos(a14@1,
{initiate(interact(0),0)},
{},
{timestep(0).
visible(0,23,0).
goal(0).
}).

#pos(a15@1,
{},
{initiate(interact(10),9)},
{timestep(9).
visible(1,23,9).
visible(10,273,9).
wall(10).
goal(1).
}).

#pos(a16@1,
{},
{initiate(interact(10),1)},
{timestep(1).
visible(10,1000,1).
wall(10).
goal(42).
}).

#pos(a17@1,
{},
{initiate(interact(10),8)},
{timestep(8).
visible(10,1000,8).
wall(10).
goal(42).
}).

#pos(a18@1,
{},
{initiate(interact(10),6)},
{timestep(6).
visible(1,23,6).
visible(10,511,6).
wall(10).
goal(1).
}).

#pos(a19@1,
{initiate(interact(0),5)},
{},
{timestep(5).
visible(0,23,5).
visible(10,130,5).
wall(10).
goal(0).
}).

#pos(a20@1,
{initiate(interact(1),6)},
{},
{timestep(6).
visible(1,23,6).
visible(10,440,6).
wall(10).
goal(1).
}).

#pos(a21@1,
{initiate(interact(0),3)},
{},
{timestep(3).
visible(0,23,3).
visible(10,47,3).
wall(10).
goal(0).
}).

#pos(a22@1,
{},
{initiate(interact(1),4)},
{timestep(4).
visible(1,47,4).
goal(1).
}).

#pos(a23@1,
{},
{initiate(interact(10),5)},
{timestep(5).
visible(10,964,5).
wall(10).
goal(42).
}).

#pos(a24@1,
{},
{initiate(interact(10),3)},
{timestep(3).
visible(10,1000,3).
wall(10).
goal(42).
}).

#pos(a25@1,
{},
{initiate(interact(10),5)},
{timestep(5).
visible(10,928,5).
wall(10).
goal(42).
}).

#pos(a26@1,
{initiate(interact(0),3)},
{},
{timestep(3).
visible(0,47,3).
visible(10,809,3).
wall(10).
goal(0).
}).

#pos(a27@1,
{},
{initiate(interact(10),2)},
{timestep(2).
visible(10,1000,2).
wall(10).
goal(42).
}).

#pos(a28@1,
{},
{initiate(interact(10),14)},
{timestep(14).
visible(3,23,14).
visible(10,238,14).
wall(10).
goal(3).
}).

#pos(a29@1,
{},
{initiate(interact(10),2)},
{timestep(2).
visible(10,1000,2).
wall(10).
goal(42).
}).

