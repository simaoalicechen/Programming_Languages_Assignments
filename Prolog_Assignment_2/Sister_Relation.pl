male(jason).
male(sam).
male(henry).
male(tim).
male(andy).


female(jessica).
female(sarah).
female(hannah).
female(tina).
female(sally).


parent(jason, jessica).
parent(jason, sam).
parent(jason, hannah).
parent(sarah, sam).
parent(sarah, tina).
parent(sarah, sally).
parent(andy, sally).
parent(jessica, tim).
parent(hannah, henry).


sibling(X,Y) :- parent(M,X), parent(M,Y).
sister(X,Y) :- sibling(X,Y), female(X).