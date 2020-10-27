; (define (p) (p))
; (define (test x y)
;   (if (=x 0) 0 y))
;
; Applicative order evaluation
; First we apply the substitutions, (=0 0) 0 p
; then the function looks to substitute p again and again 
; entering in an infinite loop as it can't resolves the value.
; 
; Normal order evaluation
; The predicate evaluates to true, so the interpreter gets to evaluate the 
; the consequent simply returning 0. The interpreter never gets into evaluate
; the alternative (p).
