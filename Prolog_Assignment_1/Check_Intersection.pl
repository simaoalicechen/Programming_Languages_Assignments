% Write a program that succeeds if the intersection of two given list parameters is empty.


empty_intersection([X],[Y]).
empty_intersection(X,Y):-intersection(X,Y,[]).