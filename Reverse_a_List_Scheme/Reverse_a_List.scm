;;;Write programs in Haskell, and Scheme that reverses a simple list of integers using
;;;recursion; specifically, in tail recursive form. Do not use higher order functions such as
;;;“reverse”, comprehensive lists or functions from a library.


(define (reverse_list lst)
  (reverse_list_helper lst '()))

(define (reverse_list_helper lst acc)
  (if (null? lst)
      acc
      (reverse_list_helper (cdr lst) (cons (car lst) acc))))