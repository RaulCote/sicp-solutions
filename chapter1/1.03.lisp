(define (larger-square-sum a b c)
  (cond ((and (<= a b) (<= a c)) (square-sum b c))
        ((and (<= b a) (<= b c)) (square-sum a c))
        (else                    (square-sum a b))))

(define (square-sum a b) 
  (+ (square a) (square b)))

(define (square a) (* a a))
