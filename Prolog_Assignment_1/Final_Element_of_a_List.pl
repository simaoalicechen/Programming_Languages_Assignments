% Write a program that returns the final element of a list

lastElement(X,[X]).
lastElement(X,[Y|Z]):- lastElement(X,Z).