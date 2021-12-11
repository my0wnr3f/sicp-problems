;; This $h1t doesn't works 'cuz Scheme interpreter uses 
;; applicative execution order.
;;
;; When (test 0 (p)) is called, we can imagine the 
;; execution by using the substitution model.
;;
;; (test 0 (p)) evolve into 
;; (if (= 0 0)
;;     0
;;     (p))
;;
;; But sub. model computes all arguments, and then 
;; execute a procedure, and now we have an infinite loop.
;;
;; Yeah, shitty explaining,
;; but i tried.

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

