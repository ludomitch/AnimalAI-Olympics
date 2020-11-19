
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
#neg(a0@1,
{initiate(interact(10),8)},
{},
{timestep(8).
visible(1,23,8).
visible(10,488,8).
wall(10).
goal(1).
}).

#neg(a1@1,
{initiate(interact(10),3)},
{},
{timestep(3).
visible(0,23,3).
visible(10,321,3).
wall(10).
goal(0).
}).

#pos(a2@1,
{initiate(interact(0),1)},
{},
{timestep(1).
visible(0,23,1).
visible(10,773,1).
wall(10).
goal(0).
}).

#pos(a3@1,
{initiate(interact(0),3)},
{},
{timestep(3).
visible(0,23,3).
visible(10,59,3).
wall(10).
goal(0).
}).

#pos(a4@1,
{initiate(interact(0),2)},
{},
{timestep(2).
visible(0,47,2).
goal(0).
}).

#pos(a5@1,
{initiate(interact(0),2)},
{},
{adjacent(0,10, 2).
adjacent(10,0, 2).
timestep(2).
visible(0,47,2).
visible(10,95,2).
wall(10).
goal(0).
}).

#pos(a6@1,
{initiate(interact(0),2)},
{},
{timestep(2).
visible(0,71,2).
visible(10,47,2).
wall(10).
goal(0).
}).

#neg(a7@1,
{initiate(interact(10),8)},
{},
{timestep(8).
visible(1,23,8).
visible(10,226,8).
wall(10).
goal(1).
}).

#neg(a8@1,
{initiate(interact(10),2)},
{},
{timestep(2).
visible(10,940,2).
wall(10).
goal(42).
}).

#pos(a9@1,
{initiate(interact(0),3)},
{},
{timestep(3).
visible(0,23,3).
visible(10,95,3).
wall(10).
goal(0).
}).

#pos(a10@1,
{initiate(interact(0),3)},
{},
{adjacent(0,10, 3).
adjacent(10,0, 3).
timestep(3).
visible(0,23,3).
visible(10,1000,3).
wall(10).
goal(0).
}).

#pos(a11@1,
{initiate(interact(1),5)},
{},
{timestep(5).
visible(1,23,5).
goal(1).
}).

#neg(a12@1,
{initiate(interact(10),5)},
{},
{timestep(5).
visible(0,23,5).
visible(10,1000,5).
wall(10).
goal(0).
}).

#pos(a13@1,
{initiate(interact(1),3)},
{},
{timestep(3).
visible(1,47,3).
goal(1).
}).

#neg(a14@1,
{initiate(interact(10),3)},
{},
{timestep(3).
visible(10,59,3).
wall(10).
goal(42).
}).

#neg(a15@1,
{initiate(interact(10),2)},
{},
{timestep(2).
visible(10,1000,2).
wall(10).
goal(42).
}).

#pos(a16@1,
{initiate(interact(0),1)},
{},
{timestep(1).
visible(0,23,1).
goal(0).
}).

#neg(a17@1,
{initiate(interact(1),11)},
{},
{timestep(11).
visible(1,23,11).
visible(10,238,11).
wall(10).
goal(1).
}).

#pos(a18@1,
{initiate(interact(0),1)},
{},
{timestep(1).
visible(0,23,1).
goal(0).
}).

#neg(a19@1,
{initiate(interact(10),3)},
{},
{timestep(3).
visible(10,988,3).
wall(10).
goal(42).
}).

#neg(a20@1,
{initiate(interact(10),9)},
{},
{timestep(9).
visible(1,23,9).
visible(10,702,9).
wall(10).
goal(1).
}).

#neg(a21@1,
{initiate(interact(10),2)},
{},
{timestep(2).
visible(0,23,2).
visible(10,916,2).
wall(10).
goal(0).
}).

#pos(a22@1,
{initiate(interact(0),3)},
{},
{timestep(3).
visible(0,47,3).
goal(0).
}).

#neg(a23@1,
{initiate(interact(10),5)},
{},
{timestep(5).
visible(10,1000,5).
wall(10).
goal(42).
}).

#neg(a24@1,
{initiate(interact(10),2)},
{},
{timestep(2).
visible(10,1000,2).
wall(10).
goal(42).
}).

#pos(a25@1,
{initiate(interact(0),2)},
{},
{timestep(2).
visible(0,23,2).
visible(10,47,2).
wall(10).
goal(0).
}).

#neg(a26@1,
{initiate(explore(10,42,916),2)},
{},
{timestep(2).
visible(10,916,2).
wall(10).
goal(42).
}).

#neg(a27@1,
{initiate(interact(10),3)},
{},
{timestep(3).
visible(10,1000,3).
wall(10).
goal(42).
}).

#pos(a28@1,
{initiate(interact(0),4)},
{},
{adjacent(0,10, 4).
adjacent(0,11, 4).
adjacent(10,0, 4).
adjacent(11,0, 4).
timestep(4).
visible(0,71,4).
visible(10,35,4).
wall(10).
visible(11,35,4).
wall(11).
goal(0).
}).

#pos(a29@1,
{initiate(interact(0),0)},
{},
{timestep(0).
visible(0,23,0).
visible(10,47,0).
wall(10).
goal(0).
}).

