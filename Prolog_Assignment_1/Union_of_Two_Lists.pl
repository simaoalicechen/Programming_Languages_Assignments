/*
Write a program that returns a list containing the union of the elements of -- two given lists. Assume the list represents sets (i.e. unique elements) and -- the union returns unique elements.
*/

union_lists([],X,X).
union_lists([X|Y],Z,W):-
member(X,Z),!,union_lists(Y,Z,W).
union_lists([X|Y],Z,[X|W]):- union_lists(Y,Z,W).