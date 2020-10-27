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
; the if statement (the predicate) resolves to true so 0, p never gets
; evaluated.
