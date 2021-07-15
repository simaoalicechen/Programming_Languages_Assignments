;;;Write a function that takes two lists of integers 
;;;and returns a list containing
;;;tuples with corresponding elements from both the lists. 
;;;For example - f ([1, 2, 3], [4, 5, 6]) -> [(1, 4), (1,5), (1,6), (2, 4), (2, 5), (2, 6), (3, 4), (3 ,5), (3, 6)]. 
;;;If either list is null, the result is null. The lists do not have to 
;;;be the same length. Solve this using recursion. You may NOT use the length() 
;;;function or lambda() function or comprehension lists to do your solution.

(define myFunc
  (lambda (lst1 lst2)
    (if (null? lst1) 
        '()
        (append
         (myFunc_helper (car lst1) lst2)
         (myFunc (cdr lst1) lst2)))))

(define myFunc_helper
  (lambda (lst1_h lst2_h)
    (if (null? lst2_h) '()
        (cons
         (list lst1_h (car lst2_h))
         (myFunc_helper lst1_h (cdr lst2_h))))))

