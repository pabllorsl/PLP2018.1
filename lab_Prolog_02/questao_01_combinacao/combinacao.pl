:- initialization(main).

concatena1([], L, L).
concatena1([Head|Tail], L, [Head|R]) :-	concatena2(L, Tail, R).


concatena2([], L, L).
concatena2([Head|Tail], L, [Head|R]) :-	concatena1(L, Tail, R).

main :-
	read(ElementoX),
	read(ElementoY),
	concatena1(ElementoX, ElementoY, ElementoR),
	write(ElementoR).
