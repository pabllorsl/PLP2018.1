:- initialization(main).

contagem([], 0).
contagem([X|Lista], G) :- contagem(Lista, S), G is 1+S.

main :-
	read(ElementoX),
	sum_list(ElementoX, ElementoY),
	max_list(ElementoX, ElementoZ),
	min_list(ElementoX, ElementoA),
	contagem(ElementoX, ElementoG),
	Media is ElementoY / ElementoG,
	ElementoR is (Media * (ElementoZ-ElementoA)),
	write(ElementoR).
