(use test)
(load "on-lisp-utils.scm")

(test-begin
 "all")

(test #t (single? '(a)))
(test #f (single? '()))
(test #f (single? '(a b)))

(test '(a b c x) (append1 '(a b c) 'x))
(test '(a b c x) (append1! '(a b c) 'x))

(test '(a) (as-list 'a))
(test '(a b) (as-list '(a b)))

(test #t (longer? '(a b c) '(z)))
(test #f (longer? '(a b c) '(z y x)))
(test #f (longer? '(a) '(z y)))

(test-end)
