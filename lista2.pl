/*---ex.1---*/
	%a) 123
	%b) 1*1 2*2 3*3 4*4 5*5
	%c) 10: 11: 12: 13: 14: 15: 16: 17: 18: 19: 20:

/*--- ex.2---*/
	% 0 1 2 3 4 5 6 7 8 9 10

/*---exercício 3---*/
  wN(0):-write(0),!.  
  wN(N):-!,write(N),N1 is N-1,wN(N1),write(N). 
  pi(0):-wN(0),!.
  pi(N):-N1 is N-1,pi(N1),nl,wN(N).

/*---exercício 4---*/
%acredito que algo esteja errado :c
  ele(_,0,1):-!.
  ele(X,Y,Z):-Y1 is Y-1,ele(X,Y1,Z1),Z is Z1*X,!.

/*---exercício 5---*/ 
	%[[0, 0], [0, 1], [1, 0], [1, 1]]

/*---exercício 6---*/
  palindromo(X):-aux(X,X).
  aux(X,Y):-aux(X,[],Y).
  aux([],X,X).
  aux([X|Y],Z,T):-aux(Y,[X|Z],T).

/*---exercício 8---*/
  insOrd(X,[Y|L],[X,Y|L]):-X=<Y,!.
  insOrd(X,[A|B],[A|C]):-insOrd(X,B,C),!.
  insOrd(X,[],[X]).

/*---exercício 10---*/
%apenas numeros
  merge([],[], []):-!.
  merge(X,[],X):-!.
  merge([],Y,Y):-!.
  merge([X|L1],[Y|L2],[X|L]):-X=<Y,!,merge(L1,[Y|L2],L).      
  merge([X|L1],[Y|L2],[Y|L]):-merge([X|L1],L2,L).

/*---exercício 11---*/
  /*a primeira linha do predicado está errada, na consulta max(3,4,M) é testado se 
   a cabeça é maior que a cauda (3<4), como é falso, o corte na primeira linha não
   permite que o teste de condição na segunda linha que deixaria certo(X<=Y). Foi corrigido abaixo: */
  max(X,Y,M):- X>Y, M=X,!.
  max(X,Y,M):-!, X=<Y, M=Y.

/*---exercício 12---*/
	%b não é executado pelo predicado p quando p é executado na consulta quando b é consultado, retorna seu comando(true).

/*---exercício 13---*/
	%apresentado no exercício 4


