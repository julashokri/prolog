% © 2019 Mohammad Julashokri
nopit(X,Y):-percept(X,Y,0,_,_).
nopit(Q,Y):-percept(X,Y,0,_,_),Q is X+1.
nopit(Q,Y):-percept(X,Y,0,_,_),Q is X-1,Q>0.
nopit(X,Q):-percept(X,Y,0,_,_),Q is Y-1,Q>0.
nopit(X,Q):-percept(X,Y,0,_,_),Q is Y+1.
nowumpus(X,Y):-percept(X,Y,_,0,_).
nowumpus(Q,Y):-percept(X,Y,_,0,_),Q is X+1.
nowumpus(Q,Y):-percept(X,Y,_,0,_),Q is X-1,Q>0.
nowumpus(X,Q):-percept(X,Y,_,0,_),Q is Y-1,Q>0.
nowumpus(X,Q):-percept(X,Y,_,0,_),Q is Y+1.
agent(X,Y):-percept(X,Y,_,_,_).
glitering(X,Y):-percept(X,Y,_,_,1).
bestaction(grap):-agent(M,N),percept(M,N,_,_,1).
bestaction(goto(X,Y)):-agent(Z,T),glitering(X,Y).
bestaction(goto(A,B)):-nopit(A,B),nowumpus(A,B),not(agent(A,B)).
