rena("Vigoroso",1).
rena("Dançarino",2).
rena("Saltador",3).
rena("Raposa",4).
rena("Cometa",5).
rena("Cupido",6).
rena("Perito",7).
rena("Ligeiro",8).
rena("Rudolph",0).

readInt(X):-
    read_line_to_string(user_input,A),
    string_to_atom(A, B),
    atom_number(B, X).

:-initialization(main).

main():-
    readInt(A),
    readInt(B),
    readInt(C),
    readInt(D),
    readInt(E),
    readInt(F),
    readInt(G),
    readInt(H),
    readInt(I),
    Num is (A+B+C+D+E+F+G+H+I),
    K is ((Num mod 9)),
    rena(Rena,K),
    write(Rena).
