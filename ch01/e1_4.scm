

; this just melted my brain...
; I think the "code as data" thing just finally clicked?

(define (a-plus-abs-b a b)
	
	; if b is greater than zero, then use the plus operator 
	; on operands a and b
	
	; if b is less than or equal to zero, then use the minus
	; operator on the operands a and b (which is essentially
	; the same as an absolute value addition)
	
	; the important thing here is that we're able to return
	; a primitive procedure (operator?) and then use that
	; as a procedure for yet another operation...
	
	((if (> b 0) + -) a b)
)


(a-plus-abs-b -5 -3)
(a-plus-abs-b 5 -3)
(a-plus-abs-b 5 3)


