:- initialization(main).

contains(H, []) :- false, !.
contains(H, [H|_]) :- true, !.
contains(H, [A|B]) :- contains(H, B).

delDups([], Ans).
delDups([H|T], Ans) :-
    not(contains(H, T)) -> delDups(T, K), Ans = [H | K];
    delDups(T, K), Ans = K.

soma([], 0).
soma([H|T], Ans) :- soma(T, K), Ans is H + K.

main :-
    read(X),
    delDups(X, Ans),
    soma(Ans, S),
    write(S).
