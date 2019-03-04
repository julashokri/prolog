% © 2019 Mohammad Julashokri
takeout(X,[X|L],L).
takeout(X,[F|R],[F|S]):-takeout(X,R,S).
permq([XQ|YQ],ZQ):-permq(YQ,WQ),takeout(XQ,ZQ,WQ).
permq([],[]).
reverse([],X,X).
reverse([X|Y],Z,W):-reverse(Y,[X|Z],W).
okng([K|LL2]):-okng(LL2),reverse(LL2,[],LLL),ng(K,LLL,NNN).
okng([]).
abs(X,Y):-X>0,Y is X.
abs(X,Y):-X<0,Y is -X.
abs(0,0).
ng(I,[B|H],N):-ng(I,H,N1),N is N1+1,abs(I+N-B,AN1),AN1>0,abs(I-N-B,AN2),AN2>0.
ng(I,[],0).
solve:-permq([1,2,3,4,5,6,7,8],LL),okng(LL),write(LL),fail.