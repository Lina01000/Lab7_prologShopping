% Base case: an empty list gives an empty result.

deleteElement(_, [], []).

% If the first element matches X, remove it.

deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Otherwise, keep the first element.

deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).

% Task 2: Add an element at the end.

% When the list is empty, put X here.
add_at_the_end(X, [], [X]).

% Keep the first element and continue through the rest.
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).