; As the lisp interpreter tries to first replace all operands (predicate,
; then-clause and else-clause) with values on functions it will enter on
; an infinitive recursive loop trying to guess a better number on the else-clause
; (sqrt-iter (improve guess x) x))).
