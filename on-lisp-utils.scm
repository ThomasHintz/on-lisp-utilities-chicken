(import scheme chicken)
(use srfi-1 sequences)

(define (single? lst)
  (and (pair? lst) (null? (cdr lst))))

(define (append1 lst obj)
  (append lst (list obj)))

; conc is append! in scheme, so append1! makes more sense
(define (append1! lst obj)
  (append! lst (list obj)))

; mklist/make-list is used in srfi-1
; as-list is a better name anyways
(define (as-list obj)
  (if (list? obj) obj (list obj)))

; length in scheme is only for lists so this is simpler
; than in common lisp
(define (longer? x y)
  (and (pair? x)
       (or (null? y)
           (longer? (cdr x) (cdr y)))))

