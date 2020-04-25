

; demonstrate that an if statement requires "special form"


; attempt at a "new-if" function that behaves
; similarly to the built-in special form "if".
; I'm doing this to demonstrate that it won't work
; in certain situations.

(define (new-if predicate then-clause else-clause)
	(cond 
		(predicate then-clause)
		(else else-clause))	
)


(define x 0)


; the issue with this new-if function is that
; both the then and else clauses will be
; evaluated, which in this case will result
; in a division by zero error. This would not
; be the case if we used the built-in special
; form "if" function.


(new-if (= x 0)
	; just return x if x is equal to zero
	x
	; otherwise, divide 2 by x
	(/ 2 x)
)




