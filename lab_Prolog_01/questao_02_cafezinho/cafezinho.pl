readInt(X):-
    read_line_to_codes(user_input, A2),
    string_to_atom(A2, A1),
    atom_number(A1,X).

readString(X):- read_line_to_string(user_input, X).

readLoop(Min, Q, Cafe):-
    readString(X),
    questoes(Min, Q, Cafe, X).

questoes(Min, Q, Cafe, "Facil"):-
    K is (60 / Cafe),
    K @=< Min -> Y is (Q + 1),
    Z is (Min - K),
    readLoop(Z, Y, Cafe);
    write(Q).

questoes(Min, Q, Cafe, "Medio"):-
    K is (120 / Cafe),
    K @=< Min -> Y is (Q + 1),
    Z is (Min - K),
    readLoop(Z, Y, Cafe);
    write(Q).

questoes(Min, Q, Cafe, "Dificil"):-
    K is (180 / Cafe),
    K @=< Min -> Y is (Q + 1),
    Z is (Min - K),
    readLoop(Z, Y, Cafe);
    write(Q).

questoes(Min, Q, Cafe, "Cafezinho"):-
    Z is Cafe + 1,
    readLoop(Min, Q, Z).

:- initialization(main).

main():-
    readInt(Horas),
    Min is Horas * 60,
    readLoop(Min, 0, 1).
