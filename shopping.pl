% Start with five items.

start :-
    menu([coffee, milk, chocolate, apple, juice]).

% Display the menu and read the user's choice.

menu(Basket) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. Display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. Exit.'),
    writeln('ENTER YOUR CHOICE:'),
    read(Choice),
    handle_choice(Choice, Basket).

% Perform the selected action.

handle_choice(Choice, Basket) :-
    ( Choice == d ->
        display_items(Basket),
        menu(Basket)

    ; Choice == a ->
        writeln('Enter the item you want to add:'),
        read(Item),
        append(Basket, [Item], NewBasket),
        writeln('The item has been added.'),
        menu(NewBasket)

    ; Choice == e ->
        writeln('Goodbye!')

    ;
        writeln('Invalid choice. Please enter d, a, or e.'),
        menu(Basket)
    ).

% Stop when the list is empty.

display_items([]).

% Display the first item, then display the remaining items.

display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).