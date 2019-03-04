% © 2019 Mohammad Julashokri
takeout(X,[X|L],L).
takeout(X,[F|R],[F|S]):-takeout(X,R,S).
permq([XQ|YQ],ZQ):-permq(YQ,WQ),takeout(XQ,ZQ,WQ),ng(XQ,WQ,NO).
permq([],[]).
ng(I,[B|H],N):-ng(I,H,N1),N is N1+1,not(I+N=B),not(I-N=B).
ng(I,[],0).
solve:-permq([1,2,3,4,5,6,7,8],LL),write(LL),fail.