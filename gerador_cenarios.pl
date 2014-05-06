% Grupo: 
% Bruno Ricardo Siqueira 4953672
% Lucas Macedo De Lemos 6920122
% Marjori Pomarole NUSP
% Rosaldo Alves 6309280
%
% Gerador automatizado de cenários.

generateContainers(Num,Set,Range) :-
	Num = 1,
	randset(2,Range,S),
	append([S],[],Set), !.

generateContainers(N1,Set,Range) :-
	N2 is N1 - 1,
	generateContainers(N2,S1,Range),
	randset(2,Range,S2),
	append(S1,[S2],Set).


% Exemplo de uso:
% ? - generateContainers(3,Set,15).
% Set = [[12, 14], [8, 12], [5, 13]].