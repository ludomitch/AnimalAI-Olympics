present(X,T):- visible(X, _, T).
visible(T):- visible(X, _, T).
present(X,T):-goal(X), timestep(T).
not_occluding(X, T):-on(agent, X, T).
separator(Y, T):-on(agent, X, T), adjacent(X, Y, T), platform(X).
occludes(X,Y,T) :- present(Y, T), visible(X, _, T), not visible(Y, _, T), not separator(X, T), not not_occluding(X, T).
hazard(X,Y,T):-adjacent(X,Y,T), danger(Y).

% Macro-actions
initiate(explore(X,Y,Z),T):- visible(X,Z,T), occludes(X,Y,T).
initiate(interact(X),T):- visible(X, _,T), goal(X), not near_red(X).
initiate(rotate,T):- not visible(T), timestep(T).
initiate(avoid(X,Y),T):- goal(X), hazard(X,T)
initiate(observe_dynamics, T):- moving(X), timestep(T).
initiate(slackline(X,Y), T):- on(agent, Y), on(X,Y), goal(X), timestep(T).
initiate(multi_fetch, T):- multi_goal(_,T).

% Priority queue specific to general
% 1) Avoid
% 2) Slackline
% 3) Explore
% 4) Multiple food
% 5) Interact
% 6) Observe dynamics
% 7) Rotate

% Check statements here
