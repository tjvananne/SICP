

; define a procedure that takes three numbers
; as arguments and returns the sum of the
; squares of the two larger numbers


(define (mysquare x) 
	(* x x)
)

(define (sum_of_squares a b)
	(+ (mysquare a) (mysquare b))
)

; this is the procedure I've been asked to make
(define (f a b c)
	(cond 
		; I'm hoping to be embarrassed by this code someday soon
		((and (< a b) (< a c)) (sum_of_squares b c))
		((and (< b c) (< b a)) (sum_of_squares a c))
		(else sum_of_squares a b)
	)
)

(f 1 2 3)






