perfect(Num,R):-
    perfect(Num,1,0),
    R = true.

perfect(Num,R):-
    not(perfect(Num,1,0)),
    R = false.

perfect(Num,Num,Num).

perfect(Num,Div,Sum):-
    Div < Num,
    Resto is Num mod Div,
    Resto=0,
    NewSum is Sum+Div,
    NewDiv is Div+1,
    perfect(Num,NewDiv,NewSum).

perfect(Num,Div,Sum):-
    Div<Num,
    Resto is Num mod Div,
    Resto\=0,
    NewDiv is Div+1,
    perfect(Num,NewDiv,Sum).

:- initialization(main).

main:-
    read(Input), nl,
    perfect(Input, R),
    write(R), nl,
    halt(0).
