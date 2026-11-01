% Base case: an empty list gives an empty result.

deleteElement(_, [], []).

% If the first element matches X, remove it.

deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Otherwise, keep the first element.

deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).